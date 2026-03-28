/*
 * plsedit.c — NBA Jam SE  PLS Editor / Sound Preview
 *
 * Mono PCM .SND files: signed 16-bit little-endian, 31200 Hz.
 * Audio is resampled to 44100 Hz internally.
 *
 * Build (Linux):
 *   gcc -O2 -o plsedit plsedit.c $(sdl2-config --cflags --libs) -lm
 *
 * Build (Windows/MinGW):
 *   gcc -O2 -o plsedit.exe plsedit.c -I./SDL2/include -L./SDL2/lib \
 *       -lSDL2 -lSDL2main -mwindows -lm
 *
 * Usage:
 *   ./plsedit [NBA.PLS] [SNDS/]
 *   Defaults: NBA.PLS  SNDS/   (relative to cwd)
 */

#include <SDL2/SDL.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>
#include <math.h>

#ifdef _WIN32
  #define WIN32_LEAN_AND_MEAN
  #include <windows.h>
#else
  #include <dirent.h>
  #include <sys/stat.h>
#endif

/* ================================================================
   Constants
   ================================================================ */
#define WIN_W       1280
#define WIN_H        720
#define FS             2       /* font scale: 1=8px  2=16px */
#define FW           (8*FS)
#define FH           (8*FS)
#define LH           (FH+4)

#define LPAD           8
#define LPANEL_W     380
#define RPANEL_X     (LPANEL_W+1)
#define RPANEL_W     (WIN_W - RPANEL_X)
#define HDR_H         38
#define BOT_H         58
#define CONTENT_Y    (HDR_H+1)
#define CONTENT_H    (WIN_H - HDR_H - BOT_H - 2)

#define MAX_PL       2048
#define MAX_CMDS       64
#define OUT_RATE     44100
#define SND_RATE     31200

/* ================================================================
   Embedded 8×8 font  (public domain — printable ASCII 0x20–0x7F)
   Each byte = one scan row, MSB = leftmost pixel.
   ================================================================ */
static const uint8_t G_FONT[96][8] = {
  /*20 sp*/{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
  /*21  !*/{0x18,0x18,0x18,0x18,0x00,0x00,0x18,0x00},
  /*22  "*/{0x66,0x66,0x24,0x00,0x00,0x00,0x00,0x00},
  /*23  #*/{0x36,0x36,0x7F,0x36,0x7F,0x36,0x36,0x00},
  /*24  $*/{0x0C,0x3E,0x03,0x1E,0x30,0x1F,0x0C,0x00},
  /*25  %*/{0x00,0x63,0x33,0x18,0x0C,0x66,0x63,0x00},
  /*26  &*/{0x1C,0x36,0x1C,0x6E,0x3B,0x33,0x6E,0x00},
  /*27  '*/{0x06,0x06,0x03,0x00,0x00,0x00,0x00,0x00},
  /*28  (*/{0x18,0x0C,0x06,0x06,0x06,0x0C,0x18,0x00},
  /*29  )*/{0x06,0x0C,0x18,0x18,0x18,0x0C,0x06,0x00},
  /*2A  **/{0x00,0x66,0x3C,0xFF,0x3C,0x66,0x00,0x00},
  /*2B  +*/{0x00,0x0C,0x0C,0x3F,0x0C,0x0C,0x00,0x00},
  /*2C  ,*/{0x00,0x00,0x00,0x00,0x0C,0x0C,0x06,0x00},
  /*2D  -*/{0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00},
  /*2E  .*/{0x00,0x00,0x00,0x00,0x00,0x0C,0x0C,0x00},
  /*2F  /*/{0x60,0x30,0x18,0x0C,0x06,0x03,0x01,0x00},
  /*30  0*/{0x3E,0x63,0x73,0x7B,0x6F,0x67,0x3E,0x00},
  /*31  1*/{0x0C,0x0E,0x0C,0x0C,0x0C,0x0C,0x3F,0x00},
  /*32  2*/{0x1E,0x33,0x30,0x1C,0x06,0x33,0x3F,0x00},
  /*33  3*/{0x1E,0x33,0x30,0x1C,0x30,0x33,0x1E,0x00},
  /*34  4*/{0x38,0x3C,0x36,0x33,0x7F,0x30,0x78,0x00},
  /*35  5*/{0x3F,0x03,0x1F,0x30,0x30,0x33,0x1E,0x00},
  /*36  6*/{0x1C,0x06,0x03,0x1F,0x33,0x33,0x1E,0x00},
  /*37  7*/{0x3F,0x33,0x30,0x18,0x0C,0x0C,0x0C,0x00},
  /*38  8*/{0x1E,0x33,0x33,0x1E,0x33,0x33,0x1E,0x00},
  /*39  9*/{0x1E,0x33,0x33,0x3E,0x30,0x18,0x0E,0x00},
  /*3A  :*/{0x00,0x0C,0x0C,0x00,0x0C,0x0C,0x00,0x00},
  /*3B  ;*/{0x00,0x0C,0x0C,0x00,0x0C,0x0C,0x06,0x00},
  /*3C  <*/{0x18,0x0C,0x06,0x03,0x06,0x0C,0x18,0x00},
  /*3D  =*/{0x00,0x00,0x3F,0x00,0x3F,0x00,0x00,0x00},
  /*3E  >*/{0x06,0x0C,0x18,0x30,0x18,0x0C,0x06,0x00},
  /*3F  ?*/{0x1E,0x33,0x30,0x18,0x0C,0x00,0x0C,0x00},
  /*40  @*/{0x3E,0x63,0x7B,0x7B,0x7B,0x03,0x1E,0x00},
  /*41  A*/{0x0C,0x1E,0x33,0x33,0x3F,0x33,0x33,0x00},
  /*42  B*/{0x3F,0x66,0x66,0x3E,0x66,0x66,0x3F,0x00},
  /*43  C*/{0x3C,0x66,0x03,0x03,0x03,0x66,0x3C,0x00},
  /*44  D*/{0x1F,0x36,0x66,0x66,0x66,0x36,0x1F,0x00},
  /*45  E*/{0x7F,0x46,0x16,0x1E,0x16,0x46,0x7F,0x00},
  /*46  F*/{0x7F,0x46,0x16,0x1E,0x16,0x06,0x0F,0x00},
  /*47  G*/{0x3C,0x66,0x03,0x03,0x73,0x66,0x7C,0x00},
  /*48  H*/{0x33,0x33,0x33,0x3F,0x33,0x33,0x33,0x00},
  /*49  I*/{0x1E,0x0C,0x0C,0x0C,0x0C,0x0C,0x1E,0x00},
  /*4A  J*/{0x78,0x30,0x30,0x30,0x33,0x33,0x1E,0x00},
  /*4B  K*/{0x67,0x66,0x36,0x1E,0x36,0x66,0x67,0x00},
  /*4C  L*/{0x0F,0x06,0x06,0x06,0x46,0x66,0x7F,0x00},
  /*4D  M*/{0x63,0x77,0x7F,0x7F,0x6B,0x63,0x63,0x00},
  /*4E  N*/{0x63,0x67,0x6F,0x7B,0x73,0x63,0x63,0x00},
  /*4F  O*/{0x1C,0x36,0x63,0x63,0x63,0x36,0x1C,0x00},
  /*50  P*/{0x3F,0x66,0x66,0x3E,0x06,0x06,0x0F,0x00},
  /*51  Q*/{0x1E,0x33,0x33,0x33,0x3B,0x1E,0x38,0x00},
  /*52  R*/{0x3F,0x66,0x66,0x3E,0x36,0x66,0x67,0x00},
  /*53  S*/{0x1E,0x33,0x07,0x0E,0x38,0x33,0x1E,0x00},
  /*54  T*/{0x3F,0x2D,0x0C,0x0C,0x0C,0x0C,0x1E,0x00},
  /*55  U*/{0x33,0x33,0x33,0x33,0x33,0x33,0x3F,0x00},
  /*56  V*/{0x33,0x33,0x33,0x33,0x33,0x1E,0x0C,0x00},
  /*57  W*/{0x63,0x63,0x63,0x6B,0x7F,0x77,0x63,0x00},
  /*58  X*/{0x63,0x63,0x36,0x1C,0x1C,0x36,0x63,0x00},
  /*59  Y*/{0x33,0x33,0x33,0x1E,0x0C,0x0C,0x1E,0x00},
  /*5A  Z*/{0x7F,0x63,0x31,0x18,0x4C,0x66,0x7F,0x00},
  /*5B  [*/{0x1E,0x06,0x06,0x06,0x06,0x06,0x1E,0x00},
  /*5C  \*/{0x03,0x06,0x0C,0x18,0x30,0x60,0x40,0x00},
  /*5D  ]*/{0x1E,0x18,0x18,0x18,0x18,0x18,0x1E,0x00},
  /*5E  ^*/{0x08,0x1C,0x36,0x63,0x00,0x00,0x00,0x00},
  /*5F  _*/{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF},
  /*60  `*/{0x06,0x06,0x0C,0x00,0x00,0x00,0x00,0x00},
  /*61  a*/{0x00,0x00,0x1E,0x30,0x3E,0x33,0x6E,0x00},
  /*62  b*/{0x07,0x06,0x06,0x3E,0x66,0x66,0x3B,0x00},
  /*63  c*/{0x00,0x00,0x1E,0x33,0x03,0x33,0x1E,0x00},
  /*64  d*/{0x38,0x30,0x30,0x3E,0x33,0x33,0x6E,0x00},
  /*65  e*/{0x00,0x00,0x1E,0x33,0x3F,0x03,0x1E,0x00},
  /*66  f*/{0x1C,0x36,0x06,0x0F,0x06,0x06,0x0F,0x00},
  /*67  g*/{0x00,0x00,0x6E,0x33,0x33,0x3E,0x30,0x1F},
  /*68  h*/{0x07,0x06,0x36,0x6E,0x66,0x66,0x67,0x00},
  /*69  i*/{0x0C,0x00,0x0E,0x0C,0x0C,0x0C,0x1E,0x00},
  /*6A  j*/{0x30,0x00,0x30,0x30,0x30,0x33,0x33,0x1E},
  /*6B  k*/{0x07,0x06,0x66,0x36,0x1E,0x36,0x67,0x00},
  /*6C  l*/{0x0E,0x0C,0x0C,0x0C,0x0C,0x0C,0x1E,0x00},
  /*6D  m*/{0x00,0x00,0x33,0x7F,0x7F,0x6B,0x63,0x00},
  /*6E  n*/{0x00,0x00,0x1F,0x33,0x33,0x33,0x33,0x00},
  /*6F  o*/{0x00,0x00,0x1E,0x33,0x33,0x33,0x1E,0x00},
  /*70  p*/{0x00,0x00,0x3B,0x66,0x66,0x3E,0x06,0x0F},
  /*71  q*/{0x00,0x00,0x6E,0x33,0x33,0x3E,0x30,0x78},
  /*72  r*/{0x00,0x00,0x3B,0x6E,0x66,0x06,0x0F,0x00},
  /*73  s*/{0x00,0x00,0x3E,0x03,0x1E,0x30,0x1F,0x00},
  /*74  t*/{0x08,0x0C,0x3E,0x0C,0x0C,0x2C,0x18,0x00},
  /*75  u*/{0x00,0x00,0x33,0x33,0x33,0x33,0x6E,0x00},
  /*76  v*/{0x00,0x00,0x33,0x33,0x33,0x1E,0x0C,0x00},
  /*77  w*/{0x00,0x00,0x63,0x6B,0x7F,0x7F,0x36,0x00},
  /*78  x*/{0x00,0x00,0x63,0x36,0x1C,0x36,0x63,0x00},
  /*79  y*/{0x00,0x00,0x33,0x33,0x33,0x3E,0x30,0x1F},
  /*7A  z*/{0x00,0x00,0x3F,0x19,0x0C,0x26,0x3F,0x00},
  /*7B  {*/{0x38,0x0C,0x0C,0x07,0x0C,0x0C,0x38,0x00},
  /*7C  |*/{0x18,0x18,0x18,0x00,0x18,0x18,0x18,0x00},
  /*7D  }*/{0x07,0x0C,0x0C,0x38,0x0C,0x0C,0x07,0x00},
  /*7E  ~*/{0x6E,0x3B,0x00,0x00,0x00,0x00,0x00,0x00},
  /*7F del*/{0xFF,0x81,0xBD,0xA5,0xBD,0x81,0xFF,0x00},
};

/* ================================================================
   Data structures
   ================================================================ */
typedef enum {
    CMD_PLAY, CMD_SETVOL, CMD_LOOPSTART, CMD_LOOPEND,
    CMD_STOP, CMD_RAMPVOL, CMD_END, CMD_OTHER
} CmdType;

typedef struct {
    CmdType type;
    int     delay_ms;
    int     channel;
    char    filename[64];   /* CMD_PLAY */
    int     loops;          /* CMD_PLAY */
    int     vol;            /* CMD_SETVOL / CMD_RAMPVOL */
    int     ramp_ms;        /* CMD_RAMPVOL */
    int     count;          /* CMD_LOOPSTART */
    char    raw[128];       /* display as-is for unknown cmds */
} PlCmd;

typedef struct {
    int    id;
    int    channel;
    char   name[128];
    PlCmd  cmds[MAX_CMDS];
    int    ncmds;
    int    file_line;       /* line index in raw PLS for save */
} Playlist;

/* raw PLS lines (for round-trip save) */
#define MAX_LINES 8192
static char  *g_lines[MAX_LINES];
static int    g_nlines = 0;

static Playlist g_pl[MAX_PL];
static int      g_npl = 0;

static char g_pls_path[512];
static char g_snds_dir[512];
static int  g_dirty = 0;    /* unsaved changes */

/* ================================================================
   Audio
   ================================================================ */
static SDL_AudioDeviceID g_audio_dev = 0;
static int               g_got_freq  = OUT_RATE;

/* Resampled playback buffer (all tracks in current playlist queued) */
typedef struct { int16_t *data; int len; } SndBuf;
static SndBuf g_queue[64];
static int    g_queue_n   = 0;
static int    g_queue_cur = 0;   /* index being played */
static int    g_queue_pos = 0;   /* sample pos in current buf */
static int    g_total_samples = 0;
static int    g_played_samples = 0;
static SDL_mutex *g_audio_lock = NULL;

static void audio_cb(void *ud, uint8_t *stream, int len) {
    (void)ud;
    int16_t *out = (int16_t *)stream;
    int want = len / 2;
    memset(stream, 0, len);

    SDL_LockMutex(g_audio_lock);
    while (want > 0 && g_queue_cur < g_queue_n) {
        SndBuf *b = &g_queue[g_queue_cur];
        int avail = b->len - g_queue_pos;
        int n = avail < want ? avail : want;
        memcpy(out, b->data + g_queue_pos, n * 2);
        out          += n;
        want         -= n;
        g_queue_pos  += n;
        g_played_samples += n;
        if (g_queue_pos >= b->len) {
            g_queue_cur++;
            g_queue_pos = 0;
        }
    }
    SDL_UnlockMutex(g_audio_lock);
}

static int16_t *resample_to_out(const int16_t *src, int src_n, int *dst_n) {
    /* linear-interpolation resample SND_RATE -> g_got_freq */
    double ratio = (double)g_got_freq / SND_RATE;
    int    n     = (int)(src_n * ratio) + 1;
    int16_t *dst = (int16_t *)malloc(n * 2);
    if (!dst) { *dst_n = 0; return NULL; }
    for (int i = 0; i < n; i++) {
        double pos = i / ratio;
        int    idx = (int)pos;
        double frc = pos - idx;
        int16_t a  = (idx   < src_n) ? src[idx]   : 0;
        int16_t b  = (idx+1 < src_n) ? src[idx+1] : 0;
        dst[i] = (int16_t)(a + frc * (b - a));
    }
    *dst_n = n;
    return dst;
}

static int16_t *load_snd(const char *name, int *out_samples) {
    /* Case-insensitive search in g_snds_dir */
    char path[1024];
#ifdef _WIN32
    snprintf(path, sizeof(path), "%s\\%s.SND", g_snds_dir, name);
    /* Windows FS is case-insensitive, try directly */
    FILE *f = fopen(path, "rb");
    if (!f) {
        snprintf(path, sizeof(path), "%s\\%s.snd", g_snds_dir, name);
        f = fopen(path, "rb");
    }
#else
    /* On Linux scan directory for case-insensitive match */
    FILE *f = NULL;
    DIR *d = opendir(g_snds_dir);
    if (d) {
        struct dirent *ent;
        while ((ent = readdir(d)) != NULL) {
            /* strip extension from dirent name */
            char base[256];
            strncpy(base, ent->d_name, sizeof(base)-1);
            char *dot = strrchr(base, '.');
            if (!dot) continue;
            const char *ext = dot + 1;
            *dot = '\0';
            if (strcasecmp(ext, "SND") == 0 && strcasecmp(base, name) == 0) {
                snprintf(path, sizeof(path), "%s/%s", g_snds_dir, ent->d_name);
                f = fopen(path, "rb");
                break;
            }
        }
        closedir(d);
    }
#endif
    if (!f) { *out_samples = 0; return NULL; }
    fseek(f, 0, SEEK_END);
    long sz = ftell(f);
    fseek(f, 0, SEEK_SET);
    int raw_n = (int)(sz / 2);
    int16_t *raw = (int16_t *)malloc(raw_n * 2);
    if (!raw) { fclose(f); *out_samples = 0; return NULL; }
    if (fread(raw, 2, raw_n, f) != (size_t)raw_n) { /* short read is OK */ }
    fclose(f);
    /* resample */
    int16_t *resampled = resample_to_out(raw, raw_n, out_samples);
    free(raw);
    return resampled;
}

static void audio_stop(void) {
    SDL_LockMutex(g_audio_lock);
    SDL_PauseAudioDevice(g_audio_dev, 1);
    for (int i = 0; i < g_queue_n; i++) free(g_queue[i].data);
    g_queue_n = g_queue_cur = g_queue_pos = 0;
    g_total_samples = g_played_samples = 0;
    SDL_UnlockMutex(g_audio_lock);
}

/* Queue a single SND file for playback */
static void audio_play_snd(const char *name) {
    audio_stop();
    int n = 0;
    int16_t *d = load_snd(name, &n);
    if (!d) return;
    SDL_LockMutex(g_audio_lock);
    g_queue[0].data = d;
    g_queue[0].len  = n;
    g_queue_n       = 1;
    g_total_samples = n;
    SDL_UnlockMutex(g_audio_lock);
    SDL_PauseAudioDevice(g_audio_dev, 0);
}

/* Queue all play commands from a playlist */
static void audio_play_playlist(const Playlist *pl) {
    audio_stop();
    int total = 0;
    int cnt = 0;
    for (int i = 0; i < pl->ncmds && cnt < 64; i++) {
        const PlCmd *c = &pl->cmds[i];
        if (c->type != CMD_PLAY) continue;
        int n = 0;
        int16_t *d = load_snd(c->filename, &n);
        if (!d) continue;
        /* honour loop count (capped at 4 for sanity) */
        int loops = c->loops > 0 ? c->loops : 1;
        if (loops > 4) loops = 4;
        for (int lp = 0; lp < loops && cnt < 64; lp++) {
            g_queue[cnt].data = (lp == 0) ? d : NULL; /* shared buf */
            if (lp > 0) {
                /* duplicate buffer for extra loops */
                g_queue[cnt].data = (int16_t *)malloc(n * 2);
                if (g_queue[cnt].data)
                    memcpy(g_queue[cnt].data, d, n * 2);
            }
            g_queue[cnt].len = n;
            total += n;
            cnt++;
        }
    }
    SDL_LockMutex(g_audio_lock);
    g_queue_n        = cnt;
    g_total_samples  = total;
    SDL_UnlockMutex(g_audio_lock);
    if (cnt > 0)
        SDL_PauseAudioDevice(g_audio_dev, 0);
}

/* ================================================================
   PLS Parser
   ================================================================ */
static char *trim(char *s) {
    while (*s && isspace((unsigned char)*s)) s++;
    char *e = s + strlen(s) - 1;
    while (e > s && isspace((unsigned char)*e)) *e-- = '\0';
    return s;
}

static void str_lower(char *s) {
    for (; *s; s++) *s = (char)tolower((unsigned char)*s);
}

/* Extract single-quoted string.  Returns 1 on success. */
static int extract_quoted(const char *s, char *out, int outsz) {
    const char *p = strchr(s, '\'');
    if (!p) return 0;
    p++;
    const char *q = strchr(p, '\'');
    if (!q) return 0;
    int n = (int)(q - p);
    if (n >= outsz) n = outsz - 1;
    memcpy(out, p, n);
    out[n] = '\0';
    return 1;
}

static CmdType parse_cmd(const char *line, PlCmd *c) {
    memset(c, 0, sizeof(*c));
    strncpy(c->raw, line, sizeof(c->raw)-1);

    char buf[256];
    strncpy(buf, line, sizeof(buf)-1);
    str_lower(buf);
    char *p = trim(buf);

    /* delay at start of command line */
    char *tok = strtok(p, " \t");
    if (!tok) return CMD_OTHER;
    if (isdigit((unsigned char)*tok)) {
        c->delay_ms = atoi(tok);
        tok = strtok(NULL, " \t");
        if (!tok) return CMD_OTHER;
    }

    if      (strcmp(tok,"play")      == 0) c->type = CMD_PLAY;
    else if (strcmp(tok,"setvol")    == 0) c->type = CMD_SETVOL;
    else if (strcmp(tok,"loopstart") == 0) c->type = CMD_LOOPSTART;
    else if (strcmp(tok,"loopend")   == 0) c->type = CMD_LOOPEND;
    else if (strcmp(tok,"stop")      == 0) c->type = CMD_STOP;
    else if (strcmp(tok,"rampvol")   == 0) c->type = CMD_RAMPVOL;
    else if (strcmp(tok,"end")       == 0) c->type = CMD_END;
    else { c->type = CMD_OTHER; return CMD_OTHER; }

    /* parse arguments from original (preserving case for filenames) */
    char orig[256];
    strncpy(orig, line, sizeof(orig)-1);
    char *op = trim(orig);
    /* skip leading delay token if present */
    if (isdigit((unsigned char)*op)) {
        while (*op && !isspace((unsigned char)*op)) op++;
        while (*op && isspace((unsigned char)*op)) op++;
        while (*op && !isspace((unsigned char)*op)) op++; /* skip cmd word */
    } else {
        while (*op && !isspace((unsigned char)*op)) op++;
    }

    if (c->type == CMD_PLAY) {
        /* play  channel, 'filename', loops */
        char fname[64] = "";
        extract_quoted(orig, fname, sizeof(fname));
        strncpy(c->filename, fname, sizeof(c->filename)-1);
        /* channel = first number after 'play' */
        char tmp[128]; strncpy(tmp, op, 127);
        char *ch = strtok(trim(tmp), " \t,");
        c->channel = ch ? atoi(ch) : 0;
        /* loops = last number */
        char *lp = strrchr(orig, ',');
        c->loops = lp ? atoi(lp+1) : 1;
    } else if (c->type == CMD_SETVOL || c->type == CMD_RAMPVOL) {
        char tmp[128]; strncpy(tmp, op, 127);
        char *ch = strtok(trim(tmp), " \t,");
        c->channel = ch ? atoi(ch) : 0;
        char *v = strtok(NULL, " \t,");
        c->vol = v ? atoi(v) : 100;
        if (c->type == CMD_RAMPVOL) {
            char *r = strtok(NULL, " \t,");
            c->ramp_ms = r ? atoi(r) : 0;
        }
    } else if (c->type == CMD_LOOPSTART) {
        char tmp[128]; strncpy(tmp, op, 127);
        char *n = strtok(trim(tmp), " \t,");
        c->count = n ? atoi(n) : 1;
    } else if (c->type == CMD_STOP) {
        char tmp[128]; strncpy(tmp, op, 127);
        char *ch = strtok(trim(tmp), " \t,");
        c->channel = ch ? atoi(ch) : 0;
    }
    return c->type;
}

static int parse_pls(void) {
    FILE *f = fopen(g_pls_path, "r");
    if (!f) return 0;

    g_nlines = 0; g_npl = 0;
    char line[512];

    typedef enum { S_NONE, S_SOUNDCALLS, S_TRANSITION, S_PLAYLIST } State;
    State state = S_NONE;
    Playlist *cur = NULL;

    while (fgets(line, sizeof(line), f)) {
        /* strip newline */
        line[strcspn(line, "\r\n")] = '\0';
        /* store raw line */
        if (g_nlines < MAX_LINES)
            g_lines[g_nlines++] = strdup(line);

        char buf[512];
        strncpy(buf, line, sizeof(buf)-1);
        char *p = trim(buf);

        /* skip blank / comment lines for parsing */
        if (!*p || *p == ';' || *p == '*') continue;

        char low[512];
        strncpy(low, p, sizeof(low)-1);
        str_lower(low);

        if (strcmp(low, "soundcalls") == 0) { state = S_SOUNDCALLS; continue; }
        if (strcmp(low, "transition") == 0) { state = S_TRANSITION;  continue; }
        if (strcmp(low, "end")        == 0) {
            if (cur) cur = NULL;   /* end of playlist body */
            continue;
        }

        if (strncmp(low, "playlist", 8) == 0) {
            state = S_PLAYLIST;
            if (g_npl >= MAX_PL) continue;
            cur = &g_pl[g_npl++];
            memset(cur, 0, sizeof(*cur));
            cur->file_line = g_nlines - 1;
            /* playlist  id, channel, 'name' */
            char tmp[512]; strncpy(tmp, p+8, sizeof(tmp)-1);
            char *id  = strtok(trim(tmp), " \t,");
            char *ch  = strtok(NULL, " \t,");
            cur->id      = id ? atoi(id) : 0;
            cur->channel = ch ? atoi(ch) : 0;
            extract_quoted(p, cur->name, sizeof(cur->name));
            continue;
        }

        if (state == S_PLAYLIST && cur) {
            if (cur->ncmds < MAX_CMDS) {
                PlCmd c;
                parse_cmd(line, &c);
                cur->cmds[cur->ncmds++] = c;
            }
        }
    }
    fclose(f);
    return 1;
}

/* Save: rewrite only the playlist name lines that changed */
static void save_pls(void) {
    FILE *f = fopen(g_pls_path, "w");
    if (!f) return;
    for (int i = 0; i < g_nlines; i++)
        fprintf(f, "%s\n", g_lines[i] ? g_lines[i] : "");
    fclose(f);
    g_dirty = 0;
}

/* Update the raw line for a playlist's header (after name edit) */
static void pl_update_line(Playlist *pl) {
    if (pl->file_line < 0 || pl->file_line >= g_nlines) return;
    char buf[256];
    snprintf(buf, sizeof(buf), "\tplaylist %d, %d, '%s'",
             pl->id, pl->channel, pl->name);
    free(g_lines[pl->file_line]);
    g_lines[pl->file_line] = strdup(buf);
    g_dirty = 1;
}

/* ================================================================
   Rendering helpers
   ================================================================ */
static SDL_Renderer *g_ren = NULL;

static void fill_rect(int x, int y, int w, int h,
                      uint8_t r, uint8_t g, uint8_t b, uint8_t a) {
    SDL_SetRenderDrawColor(g_ren, r, g, b, a);
    SDL_Rect rc = {x,y,w,h};
    SDL_RenderFillRect(g_ren, &rc);
}

static void draw_rect_outline(int x, int y, int w, int h,
                               uint8_t r, uint8_t g, uint8_t b) {
    SDL_SetRenderDrawColor(g_ren, r, g, b, 255);
    SDL_Rect rc = {x,y,w,h};
    SDL_RenderDrawRect(g_ren, &rc);
}

static void draw_char(int x, int y, char ch,
                      uint8_t r, uint8_t g, uint8_t b) {
    uint8_t idx = (uint8_t)ch;
    if (idx < 0x20 || idx > 0x7F) idx = '?';
    const uint8_t *bmp = G_FONT[idx - 0x20];
    SDL_SetRenderDrawColor(g_ren, r, g, b, 255);
    for (int row = 0; row < 8; row++) {
        uint8_t bits = bmp[row];
        for (int col = 0; col < 8; col++) {
            if (bits & (0x80 >> col)) {
                if (FS == 1) {
                    SDL_RenderDrawPoint(g_ren, x+col, y+row);
                } else {
                    SDL_Rect px = {x+col*FS, y+row*FS, FS, FS};
                    SDL_RenderFillRect(g_ren, &px);
                }
            }
        }
    }
}

static int draw_str(int x, int y, const char *s,
                    uint8_t r, uint8_t g, uint8_t b, int maxw) {
    /* returns x after last char. maxw=0 means no limit */
    int cx = x;
    int lim = maxw > 0 ? x + maxw : WIN_W;
    for (; *s && cx + FW <= lim; s++, cx += FW)
        draw_char(cx, y, *s, r, g, b);
    return cx;
}

/* Truncate string to fit max_chars, adding ".." if needed */
static void trunc_str(const char *src, char *dst, int max_chars) {
    int n = (int)strlen(src);
    if (n <= max_chars) { strcpy(dst, src); return; }
    if (max_chars <= 2) { strncpy(dst, "..", max_chars); dst[max_chars]=0; return; }
    strncpy(dst, src, max_chars - 2);
    dst[max_chars - 2] = '.';
    dst[max_chars - 1] = '.';
    dst[max_chars]     = '\0';
}

/* Draw a button. Returns 1 if mouse is hovering. */
static int draw_button(int x, int y, int w, int h, const char *label,
                       int mx, int my, int pressed) {
    int hover = (mx >= x && mx < x+w && my >= y && my < y+h);
    uint8_t br = hover ? (pressed ? 80:48) : 28;
    uint8_t bg = hover ? (pressed ? 120:64):28;
    uint8_t bb = hover ? (pressed ? 255:160):64;
    fill_rect(x,y,w,h, br,bg,bb,255);
    draw_rect_outline(x,y,w,h, 64,96,200);
    int tw = (int)strlen(label)*FW;
    int tx = x + (w - tw)/2;
    int ty = y + (h - FH)/2;
    draw_str(tx, ty, label, 200, 220, 255, 0);
    return hover;
}

/* ================================================================
   UI State
   ================================================================ */
static int  g_sel_pl    = 0;    /* selected playlist index */
static int  g_scroll_pl = 0;    /* left panel scroll */
static int  g_scroll_rp = 0;    /* right panel scroll */
static int  g_playing_pl = -1;  /* index of currently playing playlist */

/* Inline edit state */
static int  g_editing    = 0;   /* 1 = editing playlist name */
static int  g_edit_pl    = -1;  /* which playlist is being edited */
static char g_edit_buf[128];
static int  g_edit_len   = 0;

static char g_status[256] = "Ready.  Click a playlist. [Enter]=Play  [F2]=Save  [Esc]=Stop";

/* ================================================================
   Rendering
   ================================================================ */
#define ROWS_VISIBLE ((CONTENT_H) / LH)

static void render_header(void) {
    fill_rect(0, 0, WIN_W, HDR_H, 10, 10, 28, 255);
    draw_str(LPAD, (HDR_H-FH)/2, "NBA Jam SE  PLS Editor",
             255, 204, 0, 0);
    /* dirty indicator */
    if (g_dirty)
        draw_str(WIN_W - 14*FW - LPAD, (HDR_H-FH)/2, "[unsaved]",
                 255, 80, 32, 0);
    /* divider */
    fill_rect(0, HDR_H, WIN_W, 1, 40, 40, 120, 255);
}

static void render_left_panel(int mx, int my) {
    fill_rect(0, CONTENT_Y, LPANEL_W, CONTENT_H, 18, 18, 30, 255);

    int rows = ROWS_VISIBLE;
    int max_scroll = g_npl - rows;
    if (max_scroll < 0) max_scroll = 0;
    if (g_scroll_pl > max_scroll) g_scroll_pl = max_scroll;

    /* Header */
    fill_rect(0, CONTENT_Y, LPANEL_W, LH, 22, 22, 45, 255);
    char hdr[64];
    snprintf(hdr, sizeof(hdr), " Playlists (%d)", g_npl);
    draw_str(LPAD, CONTENT_Y + (LH-FH)/2, hdr, 180, 180, 220, 0);

    for (int i = 0; i < rows; i++) {
        int idx = i + g_scroll_pl + 1; /* +1 for header row */
        int pi  = i + g_scroll_pl;
        if (pi >= g_npl) break;

        int ry = CONTENT_Y + (idx) * LH;
        int row_h = LH;

        int selected = (pi == g_sel_pl);
        int hover    = (mx >= 0 && mx < LPANEL_W && my >= ry && my < ry+row_h);
        int playing  = (pi == g_playing_pl);

        if (selected)
            fill_rect(0, ry, LPANEL_W, row_h, 30,50,150, 255);
        else if (hover)
            fill_rect(0, ry, LPANEL_W, row_h, 22,22,50, 255);

        /* ID badge */
        char id_s[8];
        snprintf(id_s, sizeof(id_s), "%4d", g_pl[pi].id);
        uint8_t ir = playing ? 0 : (selected ? 100:88);
        uint8_t ig = playing ? 220: (selected ? 150:88);
        uint8_t ib = playing ? 80 : (selected ? 255:120);
        draw_str(LPAD, ry + (row_h-FH)/2, id_s, ir, ig, ib, 0);

        /* Name */
        char name[64];
        int name_chars = (LPANEL_W - LPAD*2 - 5*FW) / FW;
        trunc_str(g_pl[pi].name, name, name_chars);
        uint8_t nr = playing ? 0   : (selected ? 160:200);
        uint8_t ng = playing ? 255 : (selected ? 200:200);
        uint8_t nb = playing ? 100 : (selected ? 255:220);
        draw_str(LPAD + 5*FW, ry + (row_h-FH)/2, name, nr, ng, nb, 0);
    }

    /* Scrollbar */
    if (g_npl > rows) {
        int sb_x = LPANEL_W - 8;
        int sb_h = CONTENT_H - LH;
        int thumb_h = sb_h * rows / g_npl;
        if (thumb_h < 12) thumb_h = 12;
        int thumb_y = CONTENT_Y + LH + (sb_h - thumb_h) * g_scroll_pl / (g_npl - rows + 1);
        fill_rect(sb_x, CONTENT_Y+LH, 6, sb_h, 22,22,44,255);
        fill_rect(sb_x, thumb_y, 6, thumb_h, 60,60,140,255);
    }

    /* Divider */
    fill_rect(LPANEL_W, CONTENT_Y, 1, CONTENT_H, 40,40,120,255);
}

static const char *cmd_icon(CmdType t) {
    switch(t) {
        case CMD_PLAY:      return "PLAY";
        case CMD_SETVOL:    return "VOL ";
        case CMD_LOOPSTART: return "LOOP";
        case CMD_LOOPEND:   return "LEND";
        case CMD_STOP:      return "STOP";
        case CMD_RAMPVOL:   return "RAMP";
        case CMD_END:       return "END ";
        default:            return "    ";
    }
}

static void render_right_panel(int mx, int my) {
    int rx = RPANEL_X;
    int rw = RPANEL_W;
    fill_rect(rx, CONTENT_Y, rw, CONTENT_H, 13, 13, 22, 255);

    if (g_sel_pl < 0 || g_sel_pl >= g_npl) return;
    Playlist *pl = &g_pl[g_sel_pl];

    /* Panel header */
    fill_rect(rx, CONTENT_Y, rw, LH, 22, 22, 45, 255);
    char hdr[128];
    /* editing mode */
    if (g_editing && g_edit_pl == g_sel_pl) {
        char ebuf[160];
        snprintf(ebuf, sizeof(ebuf), " %d | %s_", pl->id, g_edit_buf);
        draw_str(rx + LPAD, CONTENT_Y + (LH-FH)/2, ebuf, 255, 220, 80, 0);
    } else {
        snprintf(hdr, sizeof(hdr), " %d | ch%d | %s  [dbl-click=rename]",
                 pl->id, pl->channel, pl->name);
        draw_str(rx + LPAD, CONTENT_Y + (LH-FH)/2, hdr, 255, 204, 0, rw - LPAD*2);
    }

    /* Play Playlist button */
    int btn_w = 7*FW + LPAD, btn_h = LH-4;
    int btn_x = rx + rw - btn_w - LPAD;
    int btn_y = CONTENT_Y + 2;
    int btn_hover = draw_button(btn_x, btn_y, btn_w, btn_h, " PLAY ", mx, my, 0);
    (void)btn_hover;

    /* Commands list */
    int y0    = CONTENT_Y + LH + 1;
    int avail = CONTENT_H - LH - 1;
    int rows  = avail / LH;

    int max_sc = pl->ncmds - rows;
    if (max_sc < 0) max_sc = 0;
    if (g_scroll_rp > max_sc) g_scroll_rp = max_sc;

    for (int i = 0; i < rows; i++) {
        int ci = i + g_scroll_rp;
        if (ci >= pl->ncmds) break;
        PlCmd *c = &pl->cmds[ci];

        int ry = y0 + i * LH;
        int hover = (mx >= rx && mx < rx+rw && my >= ry && my < ry+LH);

        if (hover) fill_rect(rx, ry, rw, LH, 20, 22, 48, 255);

        /* Icon */
        uint8_t ir=100,ig=120,ib=200;
        if (c->type==CMD_PLAY) {ir=0;ig=200;ib=100;}
        else if (c->type==CMD_SETVOL||c->type==CMD_RAMPVOL) {ir=200;ig=160;ib=0;}
        else if (c->type==CMD_LOOPSTART||c->type==CMD_LOOPEND) {ir=180;ig=80;ib=220;}
        else if (c->type==CMD_END) {ir=160;ig=80;ib=80;}

        char icon_s[8];
        snprintf(icon_s,sizeof(icon_s),"[%s]", cmd_icon(c->type));
        draw_str(rx+LPAD, ry+(LH-FH)/2, icon_s, ir,ig,ib, 0);

        /* Delay */
        char delay_s[16];
        snprintf(delay_s, sizeof(delay_s), "%5dms", c->delay_ms);
        draw_str(rx+LPAD+5*FW, ry+(LH-FH)/2, delay_s, 88,88,120, 0);

        /* Details */
        char detail[128] = "";
        switch(c->type) {
            case CMD_PLAY:
                snprintf(detail,sizeof(detail),"ch%d  %-14s x%d",
                         c->channel, c->filename, c->loops);
                break;
            case CMD_SETVOL:
                snprintf(detail,sizeof(detail),"ch%d  vol=%d", c->channel, c->vol);
                break;
            case CMD_RAMPVOL:
                snprintf(detail,sizeof(detail),"ch%d  vol=%d  %dms",
                         c->channel, c->vol, c->ramp_ms);
                break;
            case CMD_LOOPSTART:
                snprintf(detail,sizeof(detail),"count=%d", c->count);
                break;
            case CMD_STOP:
                snprintf(detail,sizeof(detail),"ch%d", c->channel);
                break;
            default:
                break;
        }
        draw_str(rx+LPAD+13*FW, ry+(LH-FH)/2, detail, 200,200,220, rw-14*FW-LPAD*2);

        /* Play button for CMD_PLAY rows */
        if (c->type == CMD_PLAY) {
            int pb_w = 4*FW, pb_h = LH-4;
            int pb_x = rx + rw - pb_w - LPAD;
            int pb_y = ry + 2;
            draw_button(pb_x, pb_y, pb_w, pb_h, " > ", mx, my, 0);
        }
    }
}

static void render_bottom(int mx, int my) {
    int y = WIN_H - BOT_H;
    fill_rect(0, y, WIN_W, 1, 40,40,120,255);
    fill_rect(0, y+1, WIN_W, BOT_H-1, 10,10,26,255);

    /* Buttons */
    draw_button(LPAD,      y+8, 6*FW, BOT_H-16, "STOP",  mx, my, 0);
    draw_button(LPAD+7*FW, y+8, 6*FW, BOT_H-16, "SAVE",  mx, my, 0);

    /* Progress bar */
    int pb_x = LPAD + 15*FW;
    int pb_w = WIN_W - pb_x - 22*FW - LPAD;
    int pb_y = y + (BOT_H-12)/2;

    fill_rect(pb_x, pb_y, pb_w, 12, 20,20,40,255);
    draw_rect_outline(pb_x, pb_y, pb_w, 12, 40,40,100);

    /* progress fill */
    SDL_LockMutex(g_audio_lock);
    int total = g_total_samples;
    int played = g_played_samples + g_queue_pos;
    SDL_UnlockMutex(g_audio_lock);

    if (total > 0) {
        int fill = pb_w * played / total;
        if (fill > pb_w) fill = pb_w;
        fill_rect(pb_x+1, pb_y+1, fill-2>0?fill-2:0, 10, 0,180,100,255);
    }

    /* Time display */
    double pos_s  = (g_got_freq > 0) ? (double)played  / g_got_freq : 0;
    double tot_s  = (g_got_freq > 0) ? (double)total   / g_got_freq : 0;
    char t_str[32];
    snprintf(t_str, sizeof(t_str), "%d:%02d / %d:%02d",
             (int)pos_s/60, (int)pos_s%60,
             (int)tot_s/60, (int)tot_s%60);
    draw_str(pb_x + pb_w + LPAD, pb_y - (FH-12)/2, t_str, 140,180,140, 0);

    /* Status text */
    draw_str(LPAD + 15*FW, y + BOT_H - FH - 4, g_status, 88,88,120, 0);
}

/* ================================================================
   Hit testing helpers
   ================================================================ */
typedef enum { HIT_NONE, HIT_PL_LIST, HIT_CMD_PLAY, HIT_CMD_ROW,
               HIT_BTN_STOP, HIT_BTN_SAVE, HIT_BTN_PLAY_PL,
               HIT_PL_HEADER } HitZone;

static HitZone hit_test(int mx, int my, int *out_idx) {
    *out_idx = -1;

    /* Bottom buttons */
    int by = WIN_H - BOT_H;
    if (my >= by+8 && my < by+BOT_H-8) {
        if (mx >= LPAD      && mx < LPAD+6*FW)      return HIT_BTN_STOP;
        if (mx >= LPAD+7*FW && mx < LPAD+13*FW)     return HIT_BTN_SAVE;
    }

    /* Left panel playlist list */
    if (mx >= 0 && mx < LPANEL_W && my >= CONTENT_Y && my < CONTENT_Y+CONTENT_H) {
        int row = (my - CONTENT_Y) / LH - 1;
        int pi  = row + g_scroll_pl;
        if (row >= 0 && pi >= 0 && pi < g_npl) {
            *out_idx = pi;
            return HIT_PL_LIST;
        }
    }

    /* Right panel */
    if (mx >= RPANEL_X && my >= CONTENT_Y && my < CONTENT_Y+CONTENT_H
        && g_sel_pl >= 0 && g_sel_pl < g_npl)
    {
        Playlist *pl = &g_pl[g_sel_pl];

        /* header / rename */
        if (my < CONTENT_Y + LH) return HIT_PL_HEADER;

        /* play-playlist button */
        int btn_w = 7*FW+LPAD;
        int btn_x = RPANEL_X + RPANEL_W - btn_w - LPAD;
        if (mx >= btn_x && my >= CONTENT_Y+2 && my < CONTENT_Y+LH-2)
            return HIT_BTN_PLAY_PL;

        /* command rows */
        int y0   = CONTENT_Y + LH + 1;
        int row  = (my - y0) / LH;
        int ci   = row + g_scroll_rp;
        if (row >= 0 && ci >= 0 && ci < pl->ncmds) {
            *out_idx = ci;
            /* check if play-button column was hit */
            if (pl->cmds[ci].type == CMD_PLAY) {
                int pb_x = RPANEL_X + RPANEL_W - 4*FW - LPAD;
                if (mx >= pb_x) return HIT_CMD_PLAY;
            }
            return HIT_CMD_ROW;
        }
    }
    return HIT_NONE;
}

/* ================================================================
   Main
   ================================================================ */
int main(int argc, char *argv[]) {
    strncpy(g_pls_path, argc > 1 ? argv[1] : "NBA.PLS",  sizeof(g_pls_path)-1);
    strncpy(g_snds_dir, argc > 2 ? argv[2] : "SNDS",     sizeof(g_snds_dir)-1);

    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0) {
        fprintf(stderr, "SDL_Init: %s\n", SDL_GetError());
        return 1;
    }

    /* Audio */
    g_audio_lock = SDL_CreateMutex();
    SDL_AudioSpec want = {0};
    want.freq     = OUT_RATE;
    want.format   = AUDIO_S16LSB;
    want.channels = 1;
    want.samples  = 1024;
    want.callback = audio_cb;
    SDL_AudioSpec got;
    g_audio_dev = SDL_OpenAudioDevice(NULL, 0, &want, &got,
                                      SDL_AUDIO_ALLOW_FREQUENCY_CHANGE);
    if (g_audio_dev == 0) {
        fprintf(stderr, "Audio: %s\n", SDL_GetError());
    } else {
        g_got_freq = got.freq;
        SDL_PauseAudioDevice(g_audio_dev, 1);
    }

    /* Parse PLS */
    if (!parse_pls()) {
        fprintf(stderr, "Failed to open: %s\n", g_pls_path);
        SDL_Quit();
        return 1;
    }
    snprintf(g_status, sizeof(g_status),
             "Loaded %d playlists from %s", g_npl, g_pls_path);

    SDL_Window *win = SDL_CreateWindow(
        "NBA Jam SE — PLS Editor",
        SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
        WIN_W, WIN_H, SDL_WINDOW_RESIZABLE);
    g_ren = SDL_CreateRenderer(win, -1,
        SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

    int running = 1;
    int mx = 0, my = 0;
    Uint32 last_click_t  = 0;
    int    last_click_pl = -1;

    while (running) {
        SDL_Event e;
        while (SDL_PollEvent(&e)) {
            switch (e.type) {
            case SDL_QUIT:
                running = 0;
                break;

            case SDL_MOUSEMOTION:
                mx = e.motion.x; my = e.motion.y;
                break;

            case SDL_MOUSEWHEEL: {
                int dy = -e.wheel.y * 3;
                if (mx < LPANEL_W)
                    g_scroll_pl = SDL_max(0, g_scroll_pl + dy);
                else
                    g_scroll_rp = SDL_max(0, g_scroll_rp + dy);
                break;
            }

            case SDL_MOUSEBUTTONDOWN:
                if (e.button.button == SDL_BUTTON_LEFT) {
                    mx = e.button.x; my = e.button.y;
                    int idx = -1;
                    HitZone hz = hit_test(mx, my, &idx);

                    if (hz == HIT_BTN_STOP) {
                        audio_stop();
                        g_playing_pl = -1;
                        snprintf(g_status, sizeof(g_status), "Stopped.");

                    } else if (hz == HIT_BTN_SAVE) {
                        save_pls();
                        snprintf(g_status, sizeof(g_status),
                                 "Saved: %s", g_pls_path);

                    } else if (hz == HIT_PL_LIST && idx >= 0) {
                        g_editing = 0;
                        g_scroll_rp = 0;
                        Uint32 now = SDL_GetTicks();
                        if (idx == g_sel_pl && idx == last_click_pl
                            && now - last_click_t < 400)
                        {
                            /* double-click: edit name */
                            g_editing = 1;
                            g_edit_pl = idx;
                            strncpy(g_edit_buf, g_pl[idx].name,
                                    sizeof(g_edit_buf)-1);
                            g_edit_len = (int)strlen(g_edit_buf);
                            SDL_StartTextInput();
                        }
                        g_sel_pl      = idx;
                        last_click_t  = now;
                        last_click_pl = idx;

                    } else if (hz == HIT_BTN_PLAY_PL) {
                        g_editing = 0;
                        audio_play_playlist(&g_pl[g_sel_pl]);
                        g_playing_pl = g_sel_pl;
                        snprintf(g_status, sizeof(g_status),
                                 "Playing playlist %d: %s",
                                 g_pl[g_sel_pl].id, g_pl[g_sel_pl].name);

                    } else if (hz == HIT_CMD_PLAY && idx >= 0) {
                        g_editing = 0;
                        PlCmd *c = &g_pl[g_sel_pl].cmds[idx];
                        audio_play_snd(c->filename);
                        g_playing_pl = -1;
                        snprintf(g_status, sizeof(g_status),
                                 "Playing: %s.SND", c->filename);

                    } else {
                        g_editing = 0;
                        SDL_StopTextInput();
                    }
                }
                break;

            case SDL_TEXTINPUT:
                if (g_editing && g_edit_len < 120) {
                    int n = (int)strlen(e.text.text);
                    strncpy(g_edit_buf + g_edit_len, e.text.text,
                            120 - g_edit_len);
                    g_edit_len += n;
                    g_edit_buf[g_edit_len] = '\0';
                }
                break;

            case SDL_KEYDOWN:
                if (g_editing) {
                    if (e.key.keysym.sym == SDLK_RETURN ||
                        e.key.keysym.sym == SDLK_KP_ENTER)
                    {
                        strncpy(g_pl[g_edit_pl].name, g_edit_buf,
                                sizeof(g_pl[g_edit_pl].name)-1);
                        pl_update_line(&g_pl[g_edit_pl]);
                        g_editing = 0;
                        SDL_StopTextInput();
                        snprintf(g_status, sizeof(g_status),
                                 "Renamed. Ctrl+S or SAVE button to save.");
                    } else if (e.key.keysym.sym == SDLK_ESCAPE) {
                        g_editing = 0;
                        SDL_StopTextInput();
                    } else if (e.key.keysym.sym == SDLK_BACKSPACE) {
                        if (g_edit_len > 0)
                            g_edit_buf[--g_edit_len] = '\0';
                    }
                } else {
                    if (e.key.keysym.sym == SDLK_ESCAPE) {
                        audio_stop();
                        g_playing_pl = -1;
                    } else if (e.key.keysym.sym == SDLK_RETURN) {
                        if (g_sel_pl >= 0 && g_sel_pl < g_npl) {
                            audio_play_playlist(&g_pl[g_sel_pl]);
                            g_playing_pl = g_sel_pl;
                            snprintf(g_status,sizeof(g_status),
                                     "Playing playlist %d: %s",
                                     g_pl[g_sel_pl].id,g_pl[g_sel_pl].name);
                        }
                    } else if (e.key.keysym.sym == SDLK_F2 ||
                               ((e.key.keysym.mod & KMOD_CTRL) &&
                                e.key.keysym.sym == SDLK_s))
                    {
                        save_pls();
                        snprintf(g_status,sizeof(g_status),
                                 "Saved: %s", g_pls_path);
                    } else if (e.key.keysym.sym == SDLK_DOWN) {
                        if (g_sel_pl < g_npl-1) {
                            g_sel_pl++;
                            g_scroll_rp = 0;
                            if (g_sel_pl >= g_scroll_pl + ROWS_VISIBLE - 1)
                                g_scroll_pl++;
                        }
                    } else if (e.key.keysym.sym == SDLK_UP) {
                        if (g_sel_pl > 0) {
                            g_sel_pl--;
                            g_scroll_rp = 0;
                            if (g_sel_pl < g_scroll_pl)
                                g_scroll_pl = g_sel_pl;
                        }
                    }
                }
                break;
            }
        }

        /* Check if audio finished */
        SDL_LockMutex(g_audio_lock);
        int qdone = (g_queue_n > 0 && g_queue_cur >= g_queue_n);
        SDL_UnlockMutex(g_audio_lock);
        if (qdone) {
            SDL_PauseAudioDevice(g_audio_dev, 1);
            SDL_LockMutex(g_audio_lock);
            for (int i=0; i<g_queue_n; i++) free(g_queue[i].data);
            g_queue_n = g_queue_cur = g_queue_pos = 0;
            SDL_UnlockMutex(g_audio_lock);
            if (g_playing_pl >= 0) {
                snprintf(g_status,sizeof(g_status),"Done: %s",
                         g_pl[g_playing_pl].name);
                g_playing_pl = -1;
            }
        }

        /* Render */
        SDL_SetRenderDrawColor(g_ren, 13,13,22,255);
        SDL_RenderClear(g_ren);
        render_header();
        render_left_panel(mx, my);
        render_right_panel(mx, my);
        render_bottom(mx, my);
        SDL_RenderPresent(g_ren);
    }

    audio_stop();
    if (g_audio_dev) SDL_CloseAudioDevice(g_audio_dev);
    SDL_DestroyMutex(g_audio_lock);
    SDL_DestroyRenderer(g_ren);
    SDL_DestroyWindow(win);
    SDL_Quit();

    for (int i=0; i<g_nlines; i++) free(g_lines[i]);
    return 0;
}
