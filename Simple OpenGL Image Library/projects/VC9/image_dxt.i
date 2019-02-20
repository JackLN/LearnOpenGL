# 1 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 298 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c" 2
# 10 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c"
# 1 "E:\\shawnNan\\OpenGLTest\\Simple OpenGL Image Library\\src/image_DXT.h" 1
# 18 "E:\\shawnNan\\OpenGLTest\\Simple OpenGL Image Library\\src/image_DXT.h"
int
save_image_as_DDS
(
    const char *filename,
    int width, int height, int channels,
    const unsigned char *const data
);




unsigned char*
convert_image_to_DXT1
(
    const unsigned char *const uncompressed,
    int width, int height, int channels,
    int *out_size
);




unsigned char*
convert_image_to_DXT5
(
    const unsigned char *const uncompressed,
    int width, int height, int channels,
    int *out_size
);


typedef struct
{
    unsigned int dwMagic;
    unsigned int dwSize;
    unsigned int dwFlags;
    unsigned int dwHeight;
    unsigned int dwWidth;
    unsigned int dwPitchOrLinearSize;
    unsigned int dwDepth;
    unsigned int dwMipMapCount;
    unsigned int dwReserved1[ 11 ];


    struct
    {
        unsigned int dwSize;
        unsigned int dwFlags;
        unsigned int dwFourCC;
        unsigned int dwRGBBitCount;
        unsigned int dwRBitMask;
        unsigned int dwGBitMask;
        unsigned int dwBBitMask;
        unsigned int dwAlphaBitMask;
    }
    sPixelFormat;


    struct
    {
        unsigned int dwCaps1;
        unsigned int dwCaps2;
        unsigned int dwDDSX;
        unsigned int dwReserved;
    }
    sCaps;
    unsigned int dwReserved2;
}
DDS_header ;
# 10 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c" 2

# 1 "D:\\vs2013\\VC\\include\\math.h" 1 3
# 18 "D:\\vs2013\\VC\\include\\math.h" 3
# 1 "D:\\vs2013\\VC\\include\\crtdefs.h" 1 3
# 67 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
# 1 "D:\\vs2013\\VC\\include\\sal.h" 1 3
# 2990 "D:\\vs2013\\VC\\include\\sal.h" 3
# 1 "D:\\vs2013\\VC\\include\\ConcurrencySal.h" 1 3
# 2990 "D:\\vs2013\\VC\\include\\sal.h" 2 3
# 67 "D:\\vs2013\\VC\\include\\crtdefs.h" 2 3





#pragma pack(push,8)


# 1 "D:\\vs2013\\VC\\include\\vadefs.h" 1 3
# 28 "D:\\vs2013\\VC\\include\\vadefs.h" 3
#pragma pack(push,8)
# 50 "D:\\vs2013\\VC\\include\\vadefs.h" 3
typedef __w64 unsigned int uintptr_t;
# 59 "D:\\vs2013\\VC\\include\\vadefs.h" 3
typedef char * va_list;
# 144 "D:\\vs2013\\VC\\include\\vadefs.h" 3
#pragma pack(pop)
# 74 "D:\\vs2013\\VC\\include\\crtdefs.h" 2 3
# 496 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
typedef __w64 unsigned int size_t;






typedef size_t rsize_t;
# 512 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
typedef __w64 int intptr_t;
# 530 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
typedef __w64 int ptrdiff_t;





typedef unsigned short wchar_t;




typedef unsigned short wint_t;
typedef unsigned short wctype_t;
# 563 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
typedef int errno_t;



typedef __w64 long __time32_t;




typedef __int64 __time64_t;







typedef __time64_t time_t;
# 635 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
 __declspec(dllimport) void __cdecl _invalid_parameter( const wchar_t *, const wchar_t *, const wchar_t *, unsigned int, uintptr_t);





__declspec(dllimport) __declspec(noreturn)
void __cdecl _invoke_watson( const wchar_t *, const wchar_t *, const wchar_t *, unsigned int, uintptr_t);
# 2072 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct * pthreadlocinfo;
typedef struct threadmbcinfostruct * pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct
{
    pthreadlocinfo locinfo;
    pthreadmbcinfo mbcinfo;
} _locale_tstruct, *_locale_t;


typedef struct localerefcount {
        char *locale;
        wchar_t *wlocale;
        int *refcount;
        int *wrefcount;
} locrefcount;

typedef struct threadlocaleinfostruct {
        int refcount;
        unsigned int lc_codepage;
        unsigned int lc_collate_cp;
        unsigned int lc_time_cp;
        locrefcount lc_category[6];
        int lc_clike;
        int mb_cur_max;
        int * lconv_intl_refcount;
        int * lconv_num_refcount;
        int * lconv_mon_refcount;
        struct lconv * lconv;
        int * ctype1_refcount;
        unsigned short * ctype1;
        const unsigned short * pctype;
        const unsigned char * pclmap;
        const unsigned char * pcumap;
        struct __lc_time_data * lc_time_curr;
        wchar_t * locale_name[6];
} threadlocinfo;
# 2148 "D:\\vs2013\\VC\\include\\crtdefs.h" 3
#pragma pack(pop)
# 18 "D:\\vs2013\\VC\\include\\math.h" 2 3






#pragma pack(push,8)
# 37 "D:\\vs2013\\VC\\include\\math.h" 3
struct _exception {
        int type;
        char *name;
        double arg1;
        double arg2;
        double retval;
        } ;
# 54 "D:\\vs2013\\VC\\include\\math.h" 3
struct _complex {
        double x,y;
        } ;
# 67 "D:\\vs2013\\VC\\include\\math.h" 3
typedef float float_t;
typedef double double_t;
# 90 "D:\\vs2013\\VC\\include\\math.h" 3
__declspec(dllimport) extern double _HUGE;
# 184 "D:\\vs2013\\VC\\include\\math.h" 3
void __cdecl _fperrraise( int _Except);

short __declspec(dllimport) __cdecl _dclass( double _X);
short __declspec(dllimport) __cdecl _ldclass( long double _X);
short __declspec(dllimport) __cdecl _fdclass( float _X);

int __declspec(dllimport) __cdecl _dsign( double _X);
int __declspec(dllimport) __cdecl _ldsign( long double _X);
int __declspec(dllimport) __cdecl _fdsign( float _X);

int __declspec(dllimport) __cdecl _dpcomp( double _X, double _Y);
int __declspec(dllimport) __cdecl _ldpcomp( long double _X, long double _Y);
int __declspec(dllimport) __cdecl _fdpcomp( float _X, float _Y);

short __declspec(dllimport) __cdecl _dtest( double *_Px);
short __declspec(dllimport) __cdecl _ldtest( long double *_Px);
short __declspec(dllimport) __cdecl _fdtest( float *_Px);

short __declspec(dllimport) __cdecl _d_int( double *_Px, short _Xexp);
short __declspec(dllimport) __cdecl _ld_int( long double *_Px, short _Xexp);
short __declspec(dllimport) __cdecl _fd_int( float *_Px, short _Xexp);

short __declspec(dllimport) __cdecl _dscale( double *_Px, long _Lexp);
short __declspec(dllimport) __cdecl _ldscale( long double *_Px, long _Lexp);
short __declspec(dllimport) __cdecl _fdscale( float *_Px, long _Lexp);

short __declspec(dllimport) __cdecl _dunscale( short *_Pex, double *_Px);
short __declspec(dllimport) __cdecl _ldunscale( short *_Pex, long double *_Px);
short __declspec(dllimport) __cdecl _fdunscale( short *_Pex, float *_Px);

short __declspec(dllimport) __cdecl _dexp( double *_Px, double _Y, long _Eoff);
short __declspec(dllimport) __cdecl _ldexp( long double *_Px, long double _Y, long _Eoff);
short __declspec(dllimport) __cdecl _fdexp( float *_Px, float _Y, long _Eoff);

short __declspec(dllimport) __cdecl _dnorm( unsigned short *_Ps);
short __declspec(dllimport) __cdecl _fdnorm( unsigned short *_Ps);

double __cdecl _dpoly( double _X, const double *_Tab, int _N);
long double __cdecl _ldpoly( long double _X, const long double *_Tab, int _N);
float __cdecl _fdpoly( float _X, const float *_Tab, int _N);

double __declspec(dllimport) __cdecl _dlog( double _X, int _Baseflag);
long double __declspec(dllimport) __cdecl _ldlog( long double _X, int _Baseflag);
float __declspec(dllimport) __cdecl _fdlog( float _X, int _Baseflag);

double __declspec(dllimport) __cdecl _dsin( double _X, unsigned int _Qoff);
long double __declspec(dllimport) __cdecl _ldsin( long double _X, unsigned int _Qoff);
float __declspec(dllimport) __cdecl _fdsin( float _X, unsigned int _Qoff);


typedef union
{
    unsigned short _Sh[8];
    double _Val;
} _double_val;


typedef union
{
    unsigned short _Sh[8];
    float _Val;
} _float_val;


typedef union
{
    unsigned short _Sh[8];
    long double _Val;
} _ldouble_val;

typedef union
{
    unsigned short _Word[8];
    float _Float;
    double _Double;
    long double _Long_double;
} _float_const;

extern const _float_const _Denorm_C, _Inf_C, _Nan_C, _Snan_C, _Hugeval_C;
extern const _float_const _FDenorm_C, _FInf_C, _FNan_C, _FSnan_C;
extern const _float_const _LDenorm_C, _LInf_C, _LNan_C, _LSnan_C;

extern const _float_const _Eps_C, _Rteps_C;
extern const _float_const _FEps_C, _FRteps_C;
extern const _float_const _LEps_C, _LRteps_C;

extern const double _Zero_C, _Xbig_C;
extern const float _FZero_C, _FXbig_C;
extern const long double _LZero_C, _LXbig_C;
# 470 "D:\\vs2013\\VC\\include\\math.h" 3
int __cdecl abs( int _X);
long __cdecl labs( long _X);
long long __cdecl llabs( long long _X);

double __cdecl acos( double _X);
__declspec(dllimport) double __cdecl acosh( double _X);
double __cdecl asin( double _X);
__declspec(dllimport) double __cdecl asinh( double _X);
double __cdecl atan( double _X);
__declspec(dllimport) double __cdecl atanh( double _X);
double __cdecl atan2( double _Y, double _X);

__declspec(dllimport) double __cdecl cbrt( double _X);
__declspec(dllimport) double __cdecl copysign( double _X, double _Y);
double __cdecl cos( double _X);
double __cdecl cosh( double _X);
__declspec(dllimport) double __cdecl erf( double _X);
__declspec(dllimport) double __cdecl erfc( double _X);
double __cdecl exp( double _X);
__declspec(dllimport) double __cdecl exp2( double _X);
__declspec(dllimport) double __cdecl expm1( double _X);
                   double __cdecl fabs( double _X);
__declspec(dllimport) double __cdecl fdim( double _X, double _Y);
__declspec(dllimport) double __cdecl fma( double _X, double _Y, double _Z);
__declspec(dllimport) double __cdecl fmax( double _X, double _Y);
__declspec(dllimport) double __cdecl fmin( double _X, double _Y);
double __cdecl fmod( double _X, double _Y);
__declspec(dllimport) int __cdecl ilogb( double _X);
__declspec(dllimport) double __cdecl lgamma( double _X);
__declspec(dllimport) long long __cdecl llrint( double _X);
__declspec(dllimport) long long __cdecl llround( double _X);
double __cdecl log( double _X);
double __cdecl log10( double _X);
__declspec(dllimport) double __cdecl log1p( double _X);
__declspec(dllimport) double __cdecl log2( double _X);
__declspec(dllimport) double __cdecl logb( double _X);
__declspec(dllimport) long __cdecl lrint( double _X);
__declspec(dllimport) long __cdecl lround( double _X);
__declspec(dllimport) double __cdecl nan( const char *);
__declspec(dllimport) double __cdecl nearbyint( double _X);
__declspec(dllimport) double __cdecl nextafter( double _X, double _Y);
__declspec(dllimport) double __cdecl nexttoward( double _X, long double _Y);
double __cdecl pow( double _X, double _Y);
__declspec(dllimport) double __cdecl remainder( double _X, double _Y);
__declspec(dllimport) double __cdecl remquo( double _X, double _Y, int *_Z);
__declspec(dllimport) double __cdecl rint( double _X);
__declspec(dllimport) double __cdecl round( double _X);
__declspec(dllimport) double __cdecl scalbln( double _X, long _Y);
__declspec(dllimport) double __cdecl scalbn( double _X, int _Y);
double __cdecl sin( double _X);
double __cdecl sinh( double _X);
                    double __cdecl sqrt( double _X);
double __cdecl tan( double _X);
double __cdecl tanh( double _X);
__declspec(dllimport) double __cdecl tgamma( double _X);
__declspec(dllimport) double __cdecl trunc( double _X);

               __declspec(dllimport) double __cdecl atof( const char *_String);
               __declspec(dllimport) double __cdecl _atof_l( const char *_String, _locale_t _Locale);

__declspec(dllimport) double __cdecl _cabs( struct _complex _Complex_value);
__declspec(dllimport) double __cdecl ceil( double _X);

               __declspec(dllimport) double __cdecl _chgsign ( double _X);
               __declspec(dllimport) double __cdecl _copysign ( double _Number, double _Sign);

__declspec(dllimport) double __cdecl floor( double _X);
__declspec(dllimport) double __cdecl frexp( double _X, int * _Y);
__declspec(dllimport) double __cdecl _hypot( double _X, double _Y);
__declspec(dllimport) double __cdecl _j0( double _X );
__declspec(dllimport) double __cdecl _j1( double _X );
__declspec(dllimport) double __cdecl _jn(int _X, double _Y);
__declspec(dllimport) double __cdecl ldexp( double _X, int _Y);




int __cdecl _matherr( struct _exception * _Except);


__declspec(dllimport) double __cdecl modf( double _X, double * _Y);
__declspec(dllimport) double __cdecl _y0( double _X);
__declspec(dllimport) double __cdecl _y1( double _X);
__declspec(dllimport) double __cdecl _yn( int _X, double _Y);

__inline double __cdecl hypot( double _X, double _Y)
{
    return _hypot(_X, _Y);
}


__declspec(dllimport) float __cdecl acoshf( float _X);
__declspec(dllimport) float __cdecl asinhf( float _X);
__declspec(dllimport) float __cdecl atanhf( float _X);
__declspec(dllimport) float __cdecl cbrtf( float _X);
__declspec(dllimport) float __cdecl _chgsignf( float _X);
__declspec(dllimport) float __cdecl copysignf( float _X, float _Y);
__declspec(dllimport) float __cdecl _copysignf( float _Number, float _Sign);
__declspec(dllimport) float __cdecl erff( float _X);
__declspec(dllimport) float __cdecl erfcf( float _X);
__declspec(dllimport) float __cdecl expm1f( float _X);
__declspec(dllimport) float __cdecl exp2f( float _X);
__declspec(dllimport) float __cdecl fdimf( float _X, float _Y);
__declspec(dllimport) float __cdecl fmaf( float _X, float _Y, float _Z);
__declspec(dllimport) float __cdecl fmaxf( float _X, float _Y);
__declspec(dllimport) float __cdecl fminf( float _X, float _Y);
__declspec(dllimport) float __cdecl _hypotf( float _X, float _Y);
__declspec(dllimport) int __cdecl ilogbf( float _X);
__declspec(dllimport) float __cdecl lgammaf( float _X);
__declspec(dllimport) long long __cdecl llrintf( float _X);
__declspec(dllimport) long long __cdecl llroundf( float _X);
__declspec(dllimport) float __cdecl log1pf( float _X);
__declspec(dllimport) float __cdecl log2f( float _X);
__declspec(dllimport) float __cdecl logbf( float _X);
__declspec(dllimport) long __cdecl lrintf( float _X);
__declspec(dllimport) long __cdecl lroundf( float _X);
__declspec(dllimport) float __cdecl nanf( const char *);
__declspec(dllimport) float __cdecl nearbyintf( float _X);
__declspec(dllimport) float __cdecl nextafterf( float _X, float _Y);
__declspec(dllimport) float __cdecl nexttowardf( float _X, long double _Y);
__declspec(dllimport) float __cdecl remainderf( float _X, float _Y);
__declspec(dllimport) float __cdecl remquof( float _X, float _Y, int *_Z);
__declspec(dllimport) float __cdecl rintf( float _X);
__declspec(dllimport) float __cdecl roundf( float _X);
__declspec(dllimport) float __cdecl scalblnf( float _X, long _Y);
__declspec(dllimport) float __cdecl scalbnf( float _X, int _Y);
__declspec(dllimport) float __cdecl tgammaf( float _X);
__declspec(dllimport) float __cdecl truncf( float _X);



__declspec(dllimport) int __cdecl _set_SSE2_enable( int _Flag);
# 637 "D:\\vs2013\\VC\\include\\math.h" 3
__inline float __cdecl acosf( float _X)
{
    return (float)acos(_X);
}

__inline float __cdecl asinf( float _X)
{
    return (float)asin(_X);
}

__inline float __cdecl atan2f( float _Y, float _X)
{
    return (float)atan2(_Y, _X);
}

__inline float __cdecl atanf( float _X)
{
    return (float)atan(_X);
}

__inline float __cdecl ceilf( float _X)
{
    return (float)ceil(_X);
}

__inline float __cdecl cosf( float _X)
{
    return (float)cos(_X);
}

__inline float __cdecl coshf( float _X)
{
    return (float)cosh(_X);
}

__inline float __cdecl expf( float _X)
{
    return (float)exp(_X);
}
# 685 "D:\\vs2013\\VC\\include\\math.h" 3
__inline float __cdecl fabsf( float _X)
{
    return (float)fabs(_X);
}
# 699 "D:\\vs2013\\VC\\include\\math.h" 3
__inline float __cdecl floorf( float _X)
{
    return (float)floor(_X);
}

__inline float __cdecl fmodf( float _X, float _Y)
{
    return (float)fmod(_X, _Y);
}



__inline float __cdecl frexpf( float _X, int *_Y)
{
    return (float)frexp(_X, _Y);
}

__inline float __cdecl hypotf( float _X, float _Y)
{
    return _hypotf(_X, _Y);
}

__inline float __cdecl ldexpf( float _X, int _Y)
{
    return (float)ldexp(_X, _Y);
}
# 740 "D:\\vs2013\\VC\\include\\math.h" 3
__inline float __cdecl log10f( float _X)
{
    return (float)log10(_X);
}

__inline float __cdecl logf( float _X)
{
    return (float)log(_X);
}

__inline float __cdecl modff( float _X, float *_Y)
{
    double _F, _I;
    _F = modf(_X, &_I);
    *_Y = (float)_I;
    return (float)_F;
}

__inline float __cdecl powf( float _X, float _Y)
{
    return (float)pow(_X, _Y);
}

__inline float __cdecl sinf( float _X)
{
    return (float)sin(_X);
}

__inline float __cdecl sinhf( float _X)
{
    return (float)sinh(_X);
}

__inline float __cdecl sqrtf( float _X)
{
    return (float)sqrt(_X);
}

__inline float __cdecl tanf( float _X)
{
    return (float)tan(_X);
}

__inline float __cdecl tanhf( float _X)
{
    return (float)tanh(_X);
}



__declspec(dllimport) long double __cdecl acoshl( long double _X);

__inline long double __cdecl acosl( long double _X)
{
    return acos((double)_X);
}

__declspec(dllimport) long double __cdecl asinhl( long double _X);

__inline long double __cdecl asinl( long double _X)
{
    return asin((double)_X);
}

__inline long double __cdecl atan2l( long double _Y, long double _X)
{
    return atan2((double)_Y, (double)_X);
}

__declspec(dllimport) long double __cdecl atanhl( long double _X);

__inline long double __cdecl atanl( long double _X)
{
    return atan((double)_X);
}

__declspec(dllimport) long double __cdecl cbrtl( long double _X);

__inline long double __cdecl ceill( long double _X)
{
    return ceil((double)_X);
}

__inline long double __cdecl _chgsignl( long double _X)
{
    return _chgsign((double)_X);
}

__declspec(dllimport) long double __cdecl copysignl( long double _X, long double _Y);

__inline long double __cdecl _copysignl( long double _X, long double _Y)
{
    return _copysign((double)_X, (double)_Y);
}

__inline long double __cdecl coshl( long double _X)
{
    return cosh((double)_X);
}

__inline long double __cdecl cosl( long double _X)
{
    return cos((double)_X);
}

__declspec(dllimport) long double __cdecl erfl( long double _X);
__declspec(dllimport) long double __cdecl erfcl( long double _X);

__inline long double __cdecl expl( long double _X)
{
    return exp((double)_X);
}

__declspec(dllimport) long double __cdecl exp2l( long double _X);
__declspec(dllimport) long double __cdecl expm1l( long double _X);

__inline long double __cdecl fabsl( long double _X)
{
    return fabs((double)_X);
}

__declspec(dllimport) long double __cdecl fdiml( long double _X, long double _Y);

__inline long double __cdecl floorl( long double _X)
{
    return floor((double)_X);
}

__declspec(dllimport) long double __cdecl fmal( long double _X, long double _Y, long double _Z);
__declspec(dllimport) long double __cdecl fmaxl( long double _X, long double _Y);
__declspec(dllimport) long double __cdecl fminl( long double _X, long double _Y);

__inline long double __cdecl fmodl( long double _X, long double _Y)
{
    return fmod((double)_X, (double)_Y);
}

__inline long double __cdecl frexpl( long double _X, int *_Y)
{
    return frexp((double)_X, _Y);
}

__declspec(dllimport) int __cdecl ilogbl( long double _X);

__inline long double __cdecl _hypotl( long double _X, long double _Y)
{
    return _hypot((double)_X, (double)_Y);
}

__inline long double __cdecl hypotl( long double _X, long double _Y)
{
    return _hypot((double)_X, (double)_Y);
}

__inline long double __cdecl ldexpl( long double _X, int _Y)
{
    return ldexp((double)_X, _Y);
}

__declspec(dllimport) long double __cdecl lgammal( long double _X);
__declspec(dllimport) long long __cdecl llrintl( long double _X);
__declspec(dllimport) long long __cdecl llroundl( long double _X);

__inline long double __cdecl logl( long double _X)
{
    return log((double)_X);
}

__inline long double __cdecl log10l( long double _X)
{
    return log10((double)_X);
}

__declspec(dllimport) long double __cdecl log1pl( long double _X);
__declspec(dllimport) long double __cdecl log2l( long double _X);
__declspec(dllimport) long double __cdecl logbl( long double _X);
__declspec(dllimport) long __cdecl lrintl( long double _X);
__declspec(dllimport) long __cdecl lroundl( long double _X);

__inline long double __cdecl modfl( long double _X, long double *_Y)
{
    double _F, _I;
    _F = modf((double)_X, &_I);
    *_Y = _I;
    return _F;
}
__declspec(dllimport) long double __cdecl nanl( const char *);
__declspec(dllimport) long double __cdecl nearbyintl( long double _X);
__declspec(dllimport) long double __cdecl nextafterl( long double _X, long double _Y);
__declspec(dllimport) long double __cdecl nexttowardl( long double _X, long double _Y);

__inline long double __cdecl powl( long double _X, long double _Y)
{
    return pow((double)_X, (double)_Y);
}

__declspec(dllimport) long double __cdecl remainderl( long double _X, long double _Y);
__declspec(dllimport) long double __cdecl remquol( long double _X, long double _Y, int *_Z);
__declspec(dllimport) long double __cdecl rintl( long double _X);
__declspec(dllimport) long double __cdecl roundl( long double _X);
__declspec(dllimport) long double __cdecl scalblnl( long double _X, long _Y);
__declspec(dllimport) long double __cdecl scalbnl( long double _X, int _Y);

__inline long double __cdecl sinhl( long double _X)
{
    return sinh((double)_X);
}

__inline long double __cdecl sinl( long double _X)
{
    return sin((double)_X);
}

__inline long double __cdecl sqrtl( long double _X)
{
    return sqrt((double)_X);
}

__inline long double __cdecl tanhl( long double _X)
{
    return tanh((double)_X);
}

__inline long double __cdecl tanl( long double _X)
{
    return tan((double)_X);
}

__declspec(dllimport) long double __cdecl tgammal( long double _X);
__declspec(dllimport) long double __cdecl truncl( long double _X);
# 992 "D:\\vs2013\\VC\\include\\math.h" 3
__declspec(dllimport) extern double HUGE;




__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_j0" ". See online help for details.")) __declspec(dllimport) double __cdecl j0( double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_j1" ". See online help for details.")) __declspec(dllimport) double __cdecl j1( double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_jn" ". See online help for details.")) __declspec(dllimport) double __cdecl jn( int _X, double _Y);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_y0" ". See online help for details.")) __declspec(dllimport) double __cdecl y0( double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_y1" ". See online help for details.")) __declspec(dllimport) double __cdecl y1( double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_yn" ". See online help for details.")) __declspec(dllimport) double __cdecl yn( int _X, double _Y);
# 1265 "D:\\vs2013\\VC\\include\\math.h" 3
#pragma pack(pop)
# 11 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c" 2

# 1 "D:\\vs2013\\VC\\include\\stdlib.h" 1 3
# 21 "D:\\vs2013\\VC\\include\\stdlib.h" 3
# 1 "D:\\vs2013\\VC\\include\\crtdefs.h" 1 3
# 21 "D:\\vs2013\\VC\\include\\stdlib.h" 2 3

# 1 "D:\\vs2013\\VC\\include\\limits.h" 1 3
# 17 "D:\\vs2013\\VC\\include\\limits.h" 3
# 1 "D:\\vs2013\\VC\\include\\crtdefs.h" 1 3
# 17 "D:\\vs2013\\VC\\include\\limits.h" 2 3
# 22 "D:\\vs2013\\VC\\include\\stdlib.h" 2 3






#pragma pack(push,8)
# 52 "D:\\vs2013\\VC\\include\\stdlib.h" 3
typedef int (__cdecl * _onexit_t)(void);
# 75 "D:\\vs2013\\VC\\include\\stdlib.h" 3
typedef struct _div_t {
        int quot;
        int rem;
} div_t;

typedef struct _ldiv_t {
        long quot;
        long rem;
} ldiv_t;

typedef struct _lldiv_t {
        long long quot;
        long long rem;
} lldiv_t;
# 102 "D:\\vs2013\\VC\\include\\stdlib.h" 3
#pragma pack(4)
typedef struct {
    unsigned char ld[10];
} _LDOUBLE;
#pragma pack()
# 122 "D:\\vs2013\\VC\\include\\stdlib.h" 3
typedef struct {
        double x;
} _CRT_DOUBLE;

typedef struct {
    float f;
} _CRT_FLOAT;





typedef struct {



        long double x;
} _LONGDOUBLE;



#pragma pack(4)
typedef struct {
    unsigned char ld12[12];
} _LDBL12;
#pragma pack()
# 170 "D:\\vs2013\\VC\\include\\stdlib.h" 3
__declspec(dllimport) extern int __mb_cur_max;




__declspec(dllimport) int __cdecl ___mb_cur_max_func(void);
__declspec(dllimport) int __cdecl ___mb_cur_max_l_func(_locale_t);
# 215 "D:\\vs2013\\VC\\include\\stdlib.h" 3
typedef void (__cdecl *_purecall_handler)(void);


__declspec(dllimport) _purecall_handler __cdecl _set_purecall_handler( _purecall_handler _Handler);
__declspec(dllimport) _purecall_handler __cdecl _get_purecall_handler(void);
# 235 "D:\\vs2013\\VC\\include\\stdlib.h" 3
typedef void (__cdecl *_invalid_parameter_handler)(const wchar_t *, const wchar_t *, const wchar_t *, unsigned int, uintptr_t);


__declspec(dllimport) _invalid_parameter_handler __cdecl _set_invalid_parameter_handler( _invalid_parameter_handler _Handler);
__declspec(dllimport) _invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);





__declspec(dllimport) extern int * __cdecl _errno(void);


errno_t __cdecl _set_errno( int _Value);
errno_t __cdecl _get_errno( int * _Value);


__declspec(dllimport) unsigned long * __cdecl __doserrno(void);


errno_t __cdecl _set_doserrno( unsigned long _Value);
errno_t __cdecl _get_doserrno( unsigned long * _Value);


__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char ** __cdecl __sys_errlist(void);


__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int * __cdecl __sys_nerr(void);





__declspec(dllimport) int * __cdecl __p___argc(void);
__declspec(dllimport) char *** __cdecl __p___argv(void);
__declspec(dllimport) wchar_t *** __cdecl __p___wargv(void);
__declspec(dllimport) char *** __cdecl __p__environ(void);
__declspec(dllimport) wchar_t *** __cdecl __p__wenviron(void);


__declspec(dllimport) char ** __cdecl __p__pgmptr(void);
__declspec(dllimport) wchar_t ** __cdecl __p__wpgmptr(void);
# 288 "D:\\vs2013\\VC\\include\\stdlib.h" 3
__declspec(dllimport) extern int __argc;
__declspec(dllimport) extern char ** __argv;
__declspec(dllimport) extern wchar_t ** __wargv;
# 306 "D:\\vs2013\\VC\\include\\stdlib.h" 3
__declspec(dllimport) extern char ** _environ;
__declspec(dllimport) extern wchar_t ** _wenviron;



__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_pgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) extern char * _pgmptr;
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_wpgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) extern wchar_t * _wpgmptr;
# 339 "D:\\vs2013\\VC\\include\\stdlib.h" 3
errno_t __cdecl _get_pgmptr( char ** _Value);
errno_t __cdecl _get_wpgmptr( wchar_t ** _Value);





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_fmode" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) extern int _fmode;






__declspec(dllimport) errno_t __cdecl _set_fmode( int _Mode);
__declspec(dllimport) errno_t __cdecl _get_fmode( int * _PMode);
# 376 "D:\\vs2013\\VC\\include\\stdlib.h" 3
__declspec(dllimport) __declspec(noreturn) void __cdecl exit( int _Code);

__declspec(dllimport) __declspec(noreturn) void __cdecl _exit( int _Code);
__declspec(dllimport) __declspec(noreturn) void __cdecl abort(void);


__declspec(dllimport) unsigned int __cdecl _set_abort_behavior( unsigned int _Flags, unsigned int _Mask);

int __cdecl abs( int _X);
long __cdecl labs( long _X);
long long __cdecl llabs( long long _X);

        __int64 __cdecl _abs64(__int64);
# 426 "D:\\vs2013\\VC\\include\\stdlib.h" 3
        int __cdecl atexit(void (__cdecl *)(void));

               __declspec(dllimport) double __cdecl atof( const char *_String);
               __declspec(dllimport) double __cdecl _atof_l( const char *_String, _locale_t _Locale);
               __declspec(dllimport) int __cdecl atoi( const char *_Str);
               __declspec(dllimport) int __cdecl _atoi_l( const char *_Str, _locale_t _Locale);
               __declspec(dllimport) long __cdecl atol( const char *_Str);
               __declspec(dllimport) long __cdecl _atol_l( const char *_Str, _locale_t _Locale);
               __declspec(dllimport) long long __cdecl atoll( const char *_Str);
               __declspec(dllimport) long long __cdecl _atoll_l( const char *_Str, _locale_t _Locale);



               __declspec(dllimport) void * __cdecl bsearch_s( const void * _Key, const void * _Base,
             rsize_t _NumOfElements, rsize_t _SizeOfElements,
             int (__cdecl * _PtFuncCompare)(void *, const void *, const void *), void * _Context);

               __declspec(dllimport) void * __cdecl bsearch( const void * _Key, const void * _Base,
             size_t _NumOfElements, size_t _SizeOfElements,
             int (__cdecl * _PtFuncCompare)(const void *, const void *));


__declspec(dllimport) void __cdecl qsort_s( void * _Base,
             rsize_t _NumOfElements, rsize_t _SizeOfElements,
             int (__cdecl * _PtFuncCompare)(void *, const void *, const void *), void *_Context);

__declspec(dllimport) void __cdecl qsort( void * _Base,
             size_t _NumOfElements, size_t _SizeOfElements,
             int (__cdecl * _PtFuncCompare)(const void *, const void *));

                       unsigned short __cdecl _byteswap_ushort( unsigned short _Short);
                       unsigned long __cdecl _byteswap_ulong ( unsigned long _Long);
                       unsigned __int64 __cdecl _byteswap_uint64( unsigned __int64 _Int64);
               __declspec(dllimport) div_t __cdecl div( int _Numerator, int _Denominator);


               __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_dupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl getenv( const char * _VarName);

                   __declspec(dllimport) errno_t __cdecl getenv_s( size_t * _ReturnSize, char * _DstBuf, rsize_t _DstSize, const char * _VarName);







                   __declspec(dllimport) errno_t __cdecl _dupenv_s( char **_PBuffer, size_t * _PBufferSizeInBytes, const char * _VarName);






                   __declspec(dllimport) errno_t __cdecl _itoa_s( int _Value, char * _DstBuf, size_t _Size, int _Radix);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _itoa(int _Value, char *_Dest, int _Radix);
                   __declspec(dllimport) errno_t __cdecl _i64toa_s( __int64 _Val, char * _DstBuf, size_t _Size, int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _i64toa( __int64 _Val, char * _DstBuf, int _Radix);
                   __declspec(dllimport) errno_t __cdecl _ui64toa_s( unsigned __int64 _Val, char * _DstBuf, size_t _Size, int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _ui64toa( unsigned __int64 _Val, char * _DstBuf, int _Radix);
               __declspec(dllimport) __int64 __cdecl _atoi64( const char * _String);
               __declspec(dllimport) __int64 __cdecl _atoi64_l( const char * _String, _locale_t _Locale);
               __declspec(dllimport) __int64 __cdecl _strtoi64( const char * _String, char ** _EndPtr, int _Radix);
               __declspec(dllimport) __int64 __cdecl _strtoi64_l( const char * _String, char ** _EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) unsigned __int64 __cdecl _strtoui64( const char * _String, char ** _EndPtr, int _Radix);
               __declspec(dllimport) unsigned __int64 __cdecl _strtoui64_l( const char * _String, char ** _EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) ldiv_t __cdecl ldiv( long _Numerator, long _Denominator);
               __declspec(dllimport) lldiv_t __cdecl lldiv( long long _Numerator, long long _Denominator);
# 515 "D:\\vs2013\\VC\\include\\stdlib.h" 3
                   __declspec(dllimport) errno_t __cdecl _ltoa_s( long _Val, char * _DstBuf, size_t _Size, int _Radix);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _ltoa(long _Value, char *_Dest, int _Radix);
               __declspec(dllimport) int __cdecl mblen( const char * _Ch, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _mblen_l( const char * _Ch, size_t _MaxCount, _locale_t _Locale);
               __declspec(dllimport) size_t __cdecl _mbstrlen( const char * _Str);
               __declspec(dllimport) size_t __cdecl _mbstrlen_l( const char *_Str, _locale_t _Locale);
               __declspec(dllimport) size_t __cdecl _mbstrnlen( const char *_Str, size_t _MaxCount);
               __declspec(dllimport) size_t __cdecl _mbstrnlen_l( const char *_Str, size_t _MaxCount, _locale_t _Locale);
__declspec(dllimport) int __cdecl mbtowc( wchar_t * _DstCh, const char * _SrcCh, size_t _SrcSizeInBytes);
__declspec(dllimport) int __cdecl _mbtowc_l( wchar_t * _DstCh, const char * _SrcCh, size_t _SrcSizeInBytes, _locale_t _Locale);
                   __declspec(dllimport) errno_t __cdecl mbstowcs_s( size_t * _PtNumOfCharConverted, wchar_t * _DstBuf, size_t _SizeInWords, const char * _SrcBuf, size_t _MaxCount );

__declspec(deprecated("This function or variable may be unsafe. Consider using " "mbstowcs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl mbstowcs( wchar_t *_Dest, const char * _Source, size_t _MaxCount);

                   __declspec(dllimport) errno_t __cdecl _mbstowcs_s_l( size_t * _PtNumOfCharConverted, wchar_t * _DstBuf, size_t _SizeInWords, const char * _SrcBuf, size_t _MaxCount, _locale_t _Locale);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbstowcs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl _mbstowcs_l( wchar_t *_Dest, const char * _Source, size_t _MaxCount, _locale_t _Locale);

               __declspec(dllimport) int __cdecl rand(void);




                   __declspec(dllimport) int __cdecl _set_error_mode( int _Mode);

__declspec(dllimport) void __cdecl srand( unsigned int _Seed);
               __declspec(dllimport) double __cdecl strtod( const char * _Str, char ** _EndPtr);
               __declspec(dllimport) double __cdecl _strtod_l( const char * _Str, char ** _EndPtr, _locale_t _Locale);
               __declspec(dllimport) long __cdecl strtol( const char * _Str, char ** _EndPtr, int _Radix );
               __declspec(dllimport) long __cdecl _strtol_l( const char *_Str, char **_EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) long long __cdecl strtoll( const char * _Str, char ** _EndPtr, int _Radix );
               __declspec(dllimport) long long __cdecl _strtoll_l( const char * _Str, char ** _EndPtr, int _Radix, _locale_t _Locale );
               __declspec(dllimport) unsigned long __cdecl strtoul( const char * _Str, char ** _EndPtr, int _Radix);
               __declspec(dllimport) unsigned long __cdecl _strtoul_l(const char * _Str, char **_EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) unsigned long long __cdecl strtoull( const char * _Str, char ** _EndPtr, int _Radix);
               __declspec(dllimport) unsigned long long __cdecl _strtoull_l( const char * _Str, char ** _EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) long double __cdecl strtold( const char * _Str, char ** _EndPtr);
               __declspec(dllimport) long double __cdecl _strtold_l( const char * _Str, char ** _EndPtr, _locale_t _Locale);
               __declspec(dllimport) float __cdecl strtof( const char * _Str, char ** _EndPtr);
               __declspec(dllimport) float __cdecl _strtof_l( const char * _Str, char ** _EndPtr, _locale_t _Locale);




__declspec(dllimport) int __cdecl system( const char * _Command);



                   __declspec(dllimport) errno_t __cdecl _ultoa_s( unsigned long _Val, char * _DstBuf, size_t _Size, int _Radix);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _ultoa(unsigned long _Value, char *_Dest, int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "wctomb_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int __cdecl wctomb( char * _MbCh, wchar_t _WCh);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctomb_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int __cdecl _wctomb_l( char * _MbCh, wchar_t _WCh, _locale_t _Locale);

                   __declspec(dllimport) errno_t __cdecl wctomb_s( int * _SizeConverted, char * _MbCh, rsize_t _SizeInBytes, wchar_t _WCh);

                   __declspec(dllimport) errno_t __cdecl _wctomb_s_l( int * _SizeConverted, char * _MbCh, size_t _SizeInBytes, wchar_t _WCh, _locale_t _Locale);
                   __declspec(dllimport) errno_t __cdecl wcstombs_s( size_t * _PtNumOfCharConverted, char * _Dst, size_t _DstSizeInBytes, const wchar_t * _Src, size_t _MaxCountInBytes);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstombs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl wcstombs( char *_Dest, const wchar_t * _Source, size_t _MaxCount);
                   __declspec(dllimport) errno_t __cdecl _wcstombs_s_l( size_t * _PtNumOfCharConverted, char * _Dst, size_t _DstSizeInBytes, const wchar_t * _Src, size_t _MaxCountInBytes, _locale_t _Locale);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcstombs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl _wcstombs_l( char *_Dest, const wchar_t * _Source, size_t _MaxCount, _locale_t _Locale);
# 640 "D:\\vs2013\\VC\\include\\stdlib.h" 3
                                                                       __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl calloc( size_t _Count, size_t _Size);
__declspec(dllimport) __declspec(noalias) void __cdecl free( void * _Memory);
                                                                __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl malloc( size_t _Size);

                                                                   __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl realloc( void * _Memory, size_t _NewSize);

                                                                       __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _recalloc( void * _Memory, size_t _Count, size_t _Size);
__declspec(dllimport) __declspec(noalias) void __cdecl _aligned_free( void * _Memory);
                                                                __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _aligned_malloc( size_t _Size, size_t _Alignment);
                                                                __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _aligned_offset_malloc( size_t _Size, size_t _Alignment, size_t _Offset);

                                                                   __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _aligned_realloc( void * _Memory, size_t _NewSize, size_t _Alignment);

                                                                       __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _aligned_recalloc( void * _Memory, size_t _Count, size_t _Size, size_t _Alignment);

                                                                   __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _aligned_offset_realloc( void * _Memory, size_t _NewSize, size_t _Alignment, size_t _Offset);

                                                                       __declspec(dllimport) __declspec(noalias) __declspec(restrict) void * __cdecl _aligned_offset_recalloc( void * _Memory, size_t _Count, size_t _Size, size_t _Alignment, size_t _Offset);
               __declspec(dllimport) size_t __cdecl _aligned_msize( void * _Memory, size_t _Alignment, size_t _Offset);
# 685 "D:\\vs2013\\VC\\include\\stdlib.h" 3
                   __declspec(dllimport) errno_t __cdecl _itow_s ( int _Val, wchar_t * _DstBuf, size_t _SizeInWords, int _Radix);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _itow(int _Value, wchar_t *_Dest, int _Radix);
                   __declspec(dllimport) errno_t __cdecl _ltow_s ( long _Val, wchar_t * _DstBuf, size_t _SizeInWords, int _Radix);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _ltow(long _Value, wchar_t *_Dest, int _Radix);
                   __declspec(dllimport) errno_t __cdecl _ultow_s ( unsigned long _Val, wchar_t * _DstBuf, size_t _SizeInWords, int _Radix);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _ultow(unsigned long _Value, wchar_t *_Dest, int _Radix);
               __declspec(dllimport) double __cdecl wcstod( const wchar_t * _Str, wchar_t ** _EndPtr);
               __declspec(dllimport) double __cdecl _wcstod_l( const wchar_t *_Str, wchar_t ** _EndPtr, _locale_t _Locale);
               __declspec(dllimport) long __cdecl wcstol( const wchar_t *_Str, wchar_t ** _EndPtr, int _Radix);
               __declspec(dllimport) long __cdecl _wcstol_l( const wchar_t *_Str, wchar_t **_EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) long long __cdecl wcstoll( const wchar_t *_Str, wchar_t **_EndPtr, int _Radix);
               __declspec(dllimport) long long __cdecl _wcstoll_l( const wchar_t *_Str, wchar_t **_EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) unsigned long __cdecl wcstoul( const wchar_t *_Str, wchar_t ** _EndPtr, int _Radix);
               __declspec(dllimport) unsigned long __cdecl _wcstoul_l( const wchar_t *_Str, wchar_t **_EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) unsigned long long __cdecl wcstoull( const wchar_t *_Str, wchar_t ** _EndPtr, int _Radix);
               __declspec(dllimport) unsigned long long __cdecl _wcstoull_l( const wchar_t *_Str, wchar_t ** _EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) long double __cdecl wcstold( const wchar_t * _Str, wchar_t ** _EndPtr);
               __declspec(dllimport) long double __cdecl _wcstold_l( const wchar_t * _Str, wchar_t ** _EndPtr, _locale_t _Locale);
               __declspec(dllimport) float __cdecl wcstof( const wchar_t * _Str, wchar_t ** _EndPtr);
               __declspec(dllimport) float __cdecl _wcstof_l( const wchar_t * _Str, wchar_t ** _EndPtr, _locale_t _Locale);



               __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wdupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _wgetenv( const wchar_t * _VarName);
                   __declspec(dllimport) errno_t __cdecl _wgetenv_s( size_t * _ReturnSize, wchar_t * _DstBuf, size_t _DstSizeInWords, const wchar_t * _VarName);







                   __declspec(dllimport) errno_t __cdecl _wdupenv_s( wchar_t **_Buffer, size_t *_BufferSizeInWords, const wchar_t *_VarName);







__declspec(dllimport) int __cdecl _wsystem( const wchar_t * _Command);




               __declspec(dllimport) double __cdecl _wtof( const wchar_t *_Str);
               __declspec(dllimport) double __cdecl _wtof_l( const wchar_t *_Str, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _wtoi( const wchar_t *_Str);
               __declspec(dllimport) int __cdecl _wtoi_l( const wchar_t *_Str, _locale_t _Locale);
               __declspec(dllimport) long __cdecl _wtol( const wchar_t *_Str);
               __declspec(dllimport) long __cdecl _wtol_l( const wchar_t *_Str, _locale_t _Locale);
               __declspec(dllimport) long long __cdecl _wtoll( const wchar_t *_Str);
               __declspec(dllimport) long long __cdecl _wtoll_l( const wchar_t *_Str, _locale_t _Locale);

                   __declspec(dllimport) errno_t __cdecl _i64tow_s( __int64 _Val, wchar_t * _DstBuf, size_t _SizeInWords, int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _i64tow( __int64 _Val, wchar_t * _DstBuf, int _Radix);
                   __declspec(dllimport) errno_t __cdecl _ui64tow_s( unsigned __int64 _Val, wchar_t * _DstBuf, size_t _SizeInWords, int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _ui64tow( unsigned __int64 _Val, wchar_t * _DstBuf, int _Radix);
               __declspec(dllimport) __int64 __cdecl _wtoi64( const wchar_t *_Str);
               __declspec(dllimport) __int64 __cdecl _wtoi64_l( const wchar_t *_Str, _locale_t _Locale);
               __declspec(dllimport) __int64 __cdecl _wcstoi64( const wchar_t * _Str, wchar_t ** _EndPtr, int _Radix);
               __declspec(dllimport) __int64 __cdecl _wcstoi64_l( const wchar_t * _Str, wchar_t ** _EndPtr, int _Radix, _locale_t _Locale);
               __declspec(dllimport) unsigned __int64 __cdecl _wcstoui64( const wchar_t * _Str, wchar_t ** _EndPtr, int _Radix);
               __declspec(dllimport) unsigned __int64 __cdecl _wcstoui64_l( const wchar_t *_Str , wchar_t ** _EndPtr, int _Radix, _locale_t _Locale);
# 770 "D:\\vs2013\\VC\\include\\stdlib.h" 3
               __declspec(dllimport) char * __cdecl _fullpath( char * _FullPath, const char * _Path, size_t _SizeInBytes);







                   __declspec(dllimport) errno_t __cdecl _ecvt_s( char * _DstBuf, size_t _Size, double _Val, int _NumOfDights, int * _PtDec, int * _PtSign);

               __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _ecvt( double _Val, int _NumOfDigits, int * _PtDec, int * _PtSign);
                   __declspec(dllimport) errno_t __cdecl _fcvt_s( char * _DstBuf, size_t _Size, double _Val, int _NumOfDec, int * _PtDec, int * _PtSign);

               __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _fcvt( double _Val, int _NumOfDec, int * _PtDec, int * _PtSign);
__declspec(dllimport) errno_t __cdecl _gcvt_s( char * _DstBuf, size_t _Size, double _Val, int _NumOfDigits);

__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_gcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _gcvt( double _Val, int _NumOfDigits, char * _DstBuf);

               __declspec(dllimport) int __cdecl _atodbl( _CRT_DOUBLE * _Result, char * _Str);
               __declspec(dllimport) int __cdecl _atoldbl( _LDOUBLE * _Result, char * _Str);
               __declspec(dllimport) int __cdecl _atoflt( _CRT_FLOAT * _Result, const char * _Str);
               __declspec(dllimport) int __cdecl _atodbl_l( _CRT_DOUBLE * _Result, char * _Str, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _atoldbl_l( _LDOUBLE * _Result, char * _Str, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _atoflt_l( _CRT_FLOAT * _Result, const char * _Str, _locale_t _Locale);
                       unsigned long __cdecl _lrotl( unsigned long _Val, int _Shift);
                       unsigned long __cdecl _lrotr( unsigned long _Val, int _Shift);
                   __declspec(dllimport) errno_t __cdecl _makepath_s( char * _PathResult, size_t _SizeInWords, const char * _Drive, const char * _Dir, const char * _Filename,
                   const char * _Ext);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_makepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _makepath( char *_Path, const char * _Drive, const char * _Dir, const char * _Filename, const char * _Ext);
# 826 "D:\\vs2013\\VC\\include\\stdlib.h" 3
        _onexit_t __cdecl _onexit( _onexit_t _Func);




__declspec(dllimport) void __cdecl perror( const char * _ErrMsg);


#pragma warning(push)
#pragma warning(disable: 6540)


 __declspec(dllimport) int __cdecl _putenv( const char * _EnvString);
                   __declspec(dllimport) errno_t __cdecl _putenv_s( const char * _Name, const char * _Value);


        unsigned int __cdecl _rotl( unsigned int _Val, int _Shift);
        unsigned __int64 __cdecl _rotl64( unsigned __int64 _Val, int _Shift);
        unsigned int __cdecl _rotr( unsigned int _Val, int _Shift);
        unsigned __int64 __cdecl _rotr64( unsigned __int64 _Val, int _Shift);
#pragma warning(pop)


__declspec(dllimport) errno_t __cdecl _searchenv_s( const char * _Filename, const char * _EnvVar, char * _ResultPath, size_t _SizeInBytes);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_searchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _searchenv(const char * _Filename, const char * _EnvVar, char *_ResultPath);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "_splitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _splitpath( const char * _FullPath, char * _Drive, char * _Dir, char * _Filename, char * _Ext);
                   __declspec(dllimport) errno_t __cdecl _splitpath_s( const char * _FullPath,
                                               char * _Drive, size_t _DriveSize,
                                             char * _Dir, size_t _DirSize,
                                                  char * _Filename, size_t _FilenameSize,
                                             char * _Ext, size_t _ExtSize);


__declspec(dllimport) void __cdecl _swab( char * _Buf1, char * _Buf2, int _SizeInBytes);
# 873 "D:\\vs2013\\VC\\include\\stdlib.h" 3
               __declspec(dllimport) wchar_t * __cdecl _wfullpath( wchar_t * _FullPath, const wchar_t * _Path, size_t _SizeInWords);





                   __declspec(dllimport) errno_t __cdecl _wmakepath_s( wchar_t * _PathResult, size_t _SIZE, const wchar_t * _Drive, const wchar_t * _Dir, const wchar_t * _Filename,
                   const wchar_t * _Ext);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wmakepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _wmakepath( wchar_t *_ResultPath, const wchar_t * _Drive, const wchar_t * _Dir, const wchar_t * _Filename, const wchar_t * _Ext);


__declspec(dllimport) void __cdecl _wperror( const wchar_t * _ErrMsg);



               __declspec(dllimport) int __cdecl _wputenv( const wchar_t * _EnvString);
                   __declspec(dllimport) errno_t __cdecl _wputenv_s( const wchar_t * _Name, const wchar_t * _Value);
__declspec(dllimport) errno_t __cdecl _wsearchenv_s( const wchar_t * _Filename, const wchar_t * _EnvVar, wchar_t * _ResultPath, size_t _SizeInWords);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsearchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _wsearchenv(const wchar_t * _Filename, const wchar_t * _EnvVar, wchar_t *_ResultPath);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsplitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _wsplitpath( const wchar_t * _FullPath, wchar_t * _Drive, wchar_t * _Dir, wchar_t * _Filename, wchar_t * _Ext);
__declspec(dllimport) errno_t __cdecl _wsplitpath_s( const wchar_t * _FullPath,
                                               wchar_t * _Drive, size_t _DriveSize,
                                             wchar_t * _Dir, size_t _DirSize,
                                                  wchar_t * _Filename, size_t _FilenameSize,
                                             wchar_t * _Ext, size_t _ExtSize);







__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "SetErrorMode" " instead. See online help for details.")) __declspec(dllimport) void __cdecl _seterrormode( int _Mode);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "Beep" " instead. See online help for details.")) __declspec(dllimport) void __cdecl _beep( unsigned _Frequency, unsigned _Duration);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "Sleep" " instead. See online help for details.")) __declspec(dllimport) void __cdecl _sleep( unsigned long _Duration);
# 932 "D:\\vs2013\\VC\\include\\stdlib.h" 3
#pragma warning(push)
#pragma warning(disable: 4141)
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ecvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl ecvt( double _Val, int _NumOfDigits, int * _PtDec, int * _PtSign);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl fcvt( double _Val, int _NumOfDec, int * _PtDec, int * _PtSign);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_gcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl gcvt( double _Val, int _NumOfDigits, char * _DstBuf);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_itoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl itoa( int _Val, char * _DstBuf, int _Radix);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ltoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl ltoa( long _Val, char * _DstBuf, int _Radix);


               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_putenv" ". See online help for details.")) __declspec(dllimport) int __cdecl putenv( const char * _EnvString);


__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_swab" ". See online help for details.")) __declspec(dllimport) void __cdecl swab( char * _Buf1, char * _Buf2, int _SizeInBytes);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ultoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl ultoa( unsigned long _Val, char * _Dstbuf, int _Radix);
#pragma warning(pop)
_onexit_t __cdecl onexit( _onexit_t _Func);
# 957 "D:\\vs2013\\VC\\include\\stdlib.h" 3
#pragma pack(pop)
# 12 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c" 2

# 1 "D:\\vs2013\\VC\\include\\string.h" 1 3
# 20 "D:\\vs2013\\VC\\include\\string.h" 3
# 1 "D:\\vs2013\\VC\\include\\crtdefs.h" 1 3
# 20 "D:\\vs2013\\VC\\include\\string.h" 2 3
# 47 "D:\\vs2013\\VC\\include\\string.h" 3
__declspec(dllimport) void * __cdecl _memccpy( void * _Dst, const void * _Src, int _Val, size_t _MaxCount);
               __declspec(dllimport) void * __cdecl memchr( const void * _Buf , int _Val, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _memicmp( const void * _Buf1, const void * _Buf2, size_t _Size);
               __declspec(dllimport) int __cdecl _memicmp_l( const void * _Buf1, const void * _Buf2, size_t _Size, _locale_t _Locale);
               int __cdecl memcmp( const void * _Buf1, const void * _Buf2, size_t _Size);



void * __cdecl memcpy( void * _Dst, const void * _Src, size_t _Size);

__declspec(dllimport) errno_t __cdecl memcpy_s( void * _Dst, rsize_t _DstSize, const void * _Src, rsize_t _MaxCount);
# 94 "D:\\vs2013\\VC\\include\\string.h" 3
        void * __cdecl memset( void * _Dst, int _Val, size_t _Size);



__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memccpy" ". See online help for details.")) __declspec(dllimport) void * __cdecl memccpy( void * _Dst, const void * _Src, int _Val, size_t _Size);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl memicmp( const void * _Buf1, const void * _Buf2, size_t _Size);





                   __declspec(dllimport) errno_t __cdecl _strset_s( char * _Dst, size_t _DstSize, int _Value);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _strset( char *_Dest, int _Value);

                   __declspec(dllimport) errno_t __cdecl strcpy_s( char * _Dst, rsize_t _SizeInBytes, const char * _Src);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl strcpy( char *_Dest, const char * _Source);

                   __declspec(dllimport) errno_t __cdecl strcat_s( char * _Dst, rsize_t _SizeInBytes, const char * _Src);



__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl strcat( char *_Dest, const char * _Source);

               int __cdecl strcmp( const char * _Str1, const char * _Str2);
               size_t __cdecl strlen( const char * _Str);
               __declspec(dllimport)


size_t __cdecl strnlen( const char * _Str, size_t _MaxCount);

               static __inline


size_t __cdecl strnlen_s( const char * _Str, size_t _MaxCount)
{
    return (_Str==0) ? 0 : strnlen(_Str, _MaxCount);
}


                   __declspec(dllimport) errno_t __cdecl memmove_s( void * _Dst, rsize_t _DstSize, const void * _Src, rsize_t _MaxCount);


__declspec(dllimport) void * __cdecl memmove( void * _Dst, const void * _Src, size_t _Size);






               __declspec(dllimport) char * __cdecl _strdup( const char * _Src);





               __declspec(dllimport) char * __cdecl strchr( const char * _Str, int _Val);
               __declspec(dllimport) int __cdecl _stricmp( const char * _Str1, const char * _Str2);
               __declspec(dllimport) int __cdecl _strcmpi( const char * _Str1, const char * _Str2);
               __declspec(dllimport) int __cdecl _stricmp_l( const char * _Str1, const char * _Str2, _locale_t _Locale);
               __declspec(dllimport) int __cdecl strcoll( const char * _Str1, const char * _Str2);
               __declspec(dllimport) int __cdecl _strcoll_l( const char * _Str1, const char * _Str2, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _stricoll( const char * _Str1, const char * _Str2);
               __declspec(dllimport) int __cdecl _stricoll_l( const char * _Str1, const char * _Str2, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _strncoll ( const char * _Str1, const char * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _strncoll_l( const char * _Str1, const char * _Str2, size_t _MaxCount, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _strnicoll ( const char * _Str1, const char * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _strnicoll_l( const char * _Str1, const char * _Str2, size_t _MaxCount, _locale_t _Locale);
               __declspec(dllimport) size_t __cdecl strcspn( const char * _Str, const char * _Control);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strerror( const char * _ErrMsg);
                   __declspec(dllimport) errno_t __cdecl _strerror_s( char * _Buf, size_t _SizeInBytes, const char * _ErrMsg);

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl strerror( int);

                   __declspec(dllimport) errno_t __cdecl strerror_s( char * _Buf, size_t _SizeInBytes, int _ErrNum);


                   __declspec(dllimport) errno_t __cdecl _strlwr_s( char * _Str, size_t _Size);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strlwr( char *_String);
                   __declspec(dllimport) errno_t __cdecl _strlwr_s_l( char * _Str, size_t _Size, _locale_t _Locale);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strlwr_l( char *_String, _locale_t _Locale);

                   __declspec(dllimport) errno_t __cdecl strncat_s( char * _Dst, rsize_t _SizeInBytes, const char * _Src, rsize_t _MaxCount);


#pragma warning(push)
#pragma warning(disable: 6059)

__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl strncat( char *_Dest, const char * _Source, size_t _Count);
#pragma warning(pop)
 __declspec(dllimport) int __cdecl strncmp( const char * _Str1, const char * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _strnicmp( const char * _Str1, const char * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _strnicmp_l( const char * _Str1, const char * _Str2, size_t _MaxCount, _locale_t _Locale);

                   __declspec(dllimport) errno_t __cdecl strncpy_s( char * _Dst, rsize_t _SizeInBytes, const char * _Src, rsize_t _MaxCount);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl strncpy( char *_Dest, const char * _Source, size_t _Count);
                   __declspec(dllimport) errno_t __cdecl _strnset_s( char * _Str, size_t _SizeInBytes, int _Val, size_t _MaxCount);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strnset( char *_Dest, int _Val, size_t _Count);
               __declspec(dllimport) char * __cdecl strpbrk( const char * _Str, const char * _Control);
               __declspec(dllimport) char * __cdecl strrchr( const char * _Str, int _Ch);
__declspec(dllimport) char * __cdecl _strrev( char * _Str);
               __declspec(dllimport) size_t __cdecl strspn( const char * _Str, const char * _Control);
                               __declspec(dllimport) char * __cdecl strstr( const char * _Str, const char * _SubStr);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "strtok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl strtok( char * _Str, const char * _Delim);

               __declspec(dllimport) char * __cdecl strtok_s( char * _Str, const char * _Delim, char ** _Context);

                   __declspec(dllimport) errno_t __cdecl _strupr_s( char * _Str, size_t _Size);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strupr( char *_String);
                   __declspec(dllimport) errno_t __cdecl _strupr_s_l( char * _Str, size_t _Size, _locale_t _Locale);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strupr_l( char *_String, _locale_t _Locale);
                   __declspec(dllimport) size_t __cdecl strxfrm ( char * _Dst, const char * _Src, size_t _MaxCount);
                   __declspec(dllimport) size_t __cdecl _strxfrm_l( char * _Dst, const char * _Src, size_t _MaxCount, _locale_t _Locale);
# 245 "D:\\vs2013\\VC\\include\\string.h" 3
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strdup" ". See online help for details.")) __declspec(dllimport) char * __cdecl strdup( const char * _Src);






               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strcmpi" ". See online help for details.")) __declspec(dllimport) int __cdecl strcmpi( const char * _Str1, const char * _Str2);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_stricmp" ". See online help for details.")) __declspec(dllimport) int __cdecl stricmp( const char * _Str1, const char * _Str2);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strlwr" ". See online help for details.")) __declspec(dllimport) char * __cdecl strlwr( char * _Str);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl strnicmp( const char * _Str1, const char * _Str, size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnset" ". See online help for details.")) __declspec(dllimport) char * __cdecl strnset( char * _Str, int _Val, size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strrev" ". See online help for details.")) __declspec(dllimport) char * __cdecl strrev( char * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strset" ". See online help for details.")) char * __cdecl strset( char * _Str, int _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strupr" ". See online help for details.")) __declspec(dllimport) char * __cdecl strupr( char * _Str);
# 273 "D:\\vs2013\\VC\\include\\string.h" 3
               __declspec(dllimport) wchar_t * __cdecl _wcsdup( const wchar_t * _Str);






                   __declspec(dllimport) errno_t __cdecl wcscat_s( wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t * _Src);



__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcscat( wchar_t *_Dest, const wchar_t * _Source);



__declspec(dllimport) wchar_t * __cdecl wcschr( const wchar_t * _Str, wchar_t _Ch);
               __declspec(dllimport) int __cdecl wcscmp( const wchar_t * _Str1, const wchar_t * _Str2);

                   __declspec(dllimport) errno_t __cdecl wcscpy_s( wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t * _Src);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcscpy( wchar_t *_Dest, const wchar_t * _Source);
               __declspec(dllimport) size_t __cdecl wcscspn( const wchar_t * _Str, const wchar_t * _Control);
               __declspec(dllimport) size_t __cdecl wcslen( const wchar_t * _Str);
               __declspec(dllimport)


size_t __cdecl wcsnlen( const wchar_t * _Src, size_t _MaxCount);

               static __inline


size_t __cdecl wcsnlen_s( const wchar_t * _Src, size_t _MaxCount)
{
    return (_Src == ((void *)0)) ? 0 : wcsnlen(_Src, _MaxCount);
}


                   __declspec(dllimport) errno_t __cdecl wcsncat_s( wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t * _Src, rsize_t _MaxCount);


#pragma warning(push)
#pragma warning(disable: 6059)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsncat( wchar_t *_Dest, const wchar_t * _Source, size_t _Count);
#pragma warning(pop)
 __declspec(dllimport) int __cdecl wcsncmp( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount);

                   __declspec(dllimport) errno_t __cdecl wcsncpy_s( wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t * _Src, rsize_t _MaxCount);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsncpy( wchar_t *_Dest, const wchar_t * _Source, size_t _Count);
               __declspec(dllimport) wchar_t * __cdecl wcspbrk( const wchar_t * _Str, const wchar_t * _Control);
               __declspec(dllimport) wchar_t * __cdecl wcsrchr( const wchar_t * _Str, wchar_t _Ch);
               __declspec(dllimport) size_t __cdecl wcsspn( const wchar_t * _Str, const wchar_t * _Control);


__declspec(dllimport) wchar_t * __cdecl wcsstr( const wchar_t * _Str, const wchar_t * _SubStr);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcstok( wchar_t * _Str, const wchar_t * _Delim);

               __declspec(dllimport) wchar_t * __cdecl wcstok_s( wchar_t * _Str, const wchar_t * _Delim, wchar_t ** _Context);

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcserror( int _ErrNum);
                   __declspec(dllimport) errno_t __cdecl _wcserror_s( wchar_t * _Buf, size_t _SizeInWords, int _ErrNum);

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "__wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl __wcserror( const wchar_t * _Str);
                   __declspec(dllimport) errno_t __cdecl __wcserror_s( wchar_t * _Buffer, size_t _SizeInWords, const wchar_t * _ErrMsg);


               __declspec(dllimport) int __cdecl _wcsicmp( const wchar_t * _Str1, const wchar_t * _Str2);
               __declspec(dllimport) int __cdecl _wcsicmp_l( const wchar_t * _Str1, const wchar_t * _Str2, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _wcsnicmp( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _wcsnicmp_l( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount, _locale_t _Locale);
                   __declspec(dllimport) errno_t __cdecl _wcsnset_s( wchar_t * _Dst, size_t _SizeInWords, wchar_t _Val, size_t _MaxCount);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsnset( wchar_t *_Str, wchar_t _Val, size_t _MaxCount);
__declspec(dllimport) wchar_t * __cdecl _wcsrev( wchar_t * _Str);
                   __declspec(dllimport) errno_t __cdecl _wcsset_s( wchar_t * _Dst, size_t _SizeInWords, wchar_t _Value);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsset( wchar_t *_Str, wchar_t _Val);

                   __declspec(dllimport) errno_t __cdecl _wcslwr_s( wchar_t * _Str, size_t _SizeInWords);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcslwr( wchar_t *_String);
                   __declspec(dllimport) errno_t __cdecl _wcslwr_s_l( wchar_t * _Str, size_t _SizeInWords, _locale_t _Locale);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcslwr_l( wchar_t *_String, _locale_t _Locale);
                   __declspec(dllimport) errno_t __cdecl _wcsupr_s( wchar_t * _Str, size_t _Size);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsupr( wchar_t *_String);
                   __declspec(dllimport) errno_t __cdecl _wcsupr_s_l( wchar_t * _Str, size_t _Size, _locale_t _Locale);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsupr_l( wchar_t *_String, _locale_t _Locale);
                   __declspec(dllimport) size_t __cdecl wcsxfrm( wchar_t * _Dst, const wchar_t * _Src, size_t _MaxCount);
                   __declspec(dllimport) size_t __cdecl _wcsxfrm_l( wchar_t * _Dst, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
               __declspec(dllimport) int __cdecl wcscoll( const wchar_t * _Str1, const wchar_t * _Str2);
               __declspec(dllimport) int __cdecl _wcscoll_l( const wchar_t * _Str1, const wchar_t * _Str2, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _wcsicoll( const wchar_t * _Str1, const wchar_t * _Str2);
               __declspec(dllimport) int __cdecl _wcsicoll_l( const wchar_t * _Str1, const wchar_t *_Str2, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _wcsncoll( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _wcsncoll_l( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _wcsnicoll( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount);
               __declspec(dllimport) int __cdecl _wcsnicoll_l( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount, _locale_t _Locale);
# 403 "D:\\vs2013\\VC\\include\\string.h" 3
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsdup" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsdup( const wchar_t * _Str);
# 413 "D:\\vs2013\\VC\\include\\string.h" 3
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl wcsicmp( const wchar_t * _Str1, const wchar_t * _Str2);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl wcsnicmp( const wchar_t * _Str1, const wchar_t * _Str2, size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnset" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsnset( wchar_t * _Str, wchar_t _Val, size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsrev" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsrev( wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsset" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsset( wchar_t * _Str, wchar_t _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcslwr" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcslwr( wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsupr" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsupr( wchar_t * _Str);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicoll" ". See online help for details.")) __declspec(dllimport) int __cdecl wcsicoll( const wchar_t * _Str1, const wchar_t * _Str2);
# 13 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c" 2

# 1 "D:\\vs2013\\VC\\include\\stdio.h" 1 3
# 20 "D:\\vs2013\\VC\\include\\stdio.h" 3
# 1 "D:\\vs2013\\VC\\include\\crtdefs.h" 1 3
# 20 "D:\\vs2013\\VC\\include\\stdio.h" 2 3






#pragma pack(push,8)
# 63 "D:\\vs2013\\VC\\include\\stdio.h" 3
struct _iobuf {
        char *_ptr;
        int _cnt;
        char *_base;
        int _flag;
        int _file;
        int _charbuf;
        int _bufsiz;
        char *_tmpfname;
        };
typedef struct _iobuf FILE;
# 137 "D:\\vs2013\\VC\\include\\stdio.h" 3
__declspec(dllimport) FILE * __cdecl __iob_func(void);






typedef __int64 fpos_t;
# 175 "D:\\vs2013\\VC\\include\\stdio.h" 3
               __declspec(dllimport) int __cdecl _filbuf( FILE * _File );
                   __declspec(dllimport) int __cdecl _flsbuf( int _Ch, FILE * _File);

               __declspec(dllimport) FILE * __cdecl _fsopen( const char * _Filename, const char * _Mode, int _ShFlag);

__declspec(dllimport) void __cdecl clearerr( FILE * _File);

                   __declspec(dllimport) errno_t __cdecl clearerr_s( FILE * _File );

                   __declspec(dllimport) int __cdecl fclose( FILE * _File);
                   __declspec(dllimport) int __cdecl _fcloseall(void);

               __declspec(dllimport) FILE * __cdecl _fdopen( int _FileHandle, const char * _Mode);

               __declspec(dllimport) int __cdecl feof( FILE * _File);
               __declspec(dllimport) int __cdecl ferror( FILE * _File);
                   __declspec(dllimport) int __cdecl fflush( FILE * _File);
                   __declspec(dllimport) int __cdecl fgetc( FILE * _File);
                   __declspec(dllimport) int __cdecl _fgetchar(void);
                   __declspec(dllimport) int __cdecl fgetpos( FILE * _File , fpos_t * _Pos);
                   __declspec(dllimport) char * __cdecl fgets( char * _Buf, int _MaxCount, FILE * _File);

               __declspec(dllimport) int __cdecl _fileno( FILE * _File);






               __declspec(dllimport) char * __cdecl _tempnam( const char * _DirName, const char * _FilePrefix);





                   __declspec(dllimport) int __cdecl _flushall(void);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "fopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl fopen( const char * _Filename, const char * _Mode);

                   __declspec(dllimport) errno_t __cdecl fopen_s( FILE ** _File, const char * _Filename, const char * _Mode);

                   __declspec(dllimport) int __cdecl fprintf( FILE * _File, const char * _Format, ...);

                   __declspec(dllimport) int __cdecl fprintf_s( FILE * _File, const char * _Format, ...);

                   __declspec(dllimport) int __cdecl fputc( int _Ch, FILE * _File);
                   __declspec(dllimport) int __cdecl _fputchar( int _Ch);
                   __declspec(dllimport) int __cdecl fputs( const char * _Str, FILE * _File);
                   __declspec(dllimport) size_t __cdecl fread( void * _DstBuf, size_t _ElementSize, size_t _Count, FILE * _File);

                   __declspec(dllimport) size_t __cdecl fread_s( void * _DstBuf, size_t _DstSize, size_t _ElementSize, size_t _Count, FILE * _File);

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "freopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl freopen( const char * _Filename, const char * _Mode, FILE * _File);

                   __declspec(dllimport) errno_t __cdecl freopen_s( FILE ** _File, const char * _Filename, const char * _Mode, FILE * _OldFile);

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "fscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl fscanf( FILE * _File, const char * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _fscanf_l( FILE * _File, const char * _Format, _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable: 6530)

 __declspec(dllimport) int __cdecl fscanf_s( FILE * _File, const char * _Format, ...);

                   __declspec(dllimport) int __cdecl _fscanf_s_l( FILE * _File, const char * _Format, _locale_t _Locale, ...);
#pragma warning(pop)
 __declspec(dllimport) int __cdecl fsetpos( FILE * _File, const fpos_t * _Pos);
                   __declspec(dllimport) int __cdecl fseek( FILE * _File, long _Offset, int _Origin);
               __declspec(dllimport) long __cdecl ftell( FILE * _File);

                   __declspec(dllimport) int __cdecl _fseeki64( FILE * _File, __int64 _Offset, int _Origin);
               __declspec(dllimport) __int64 __cdecl _ftelli64( FILE * _File);

                   __declspec(dllimport) size_t __cdecl fwrite( const void * _Str, size_t _Size, size_t _Count, FILE * _File);
               __declspec(dllimport) int __cdecl getc( FILE * _File);
               __declspec(dllimport) int __cdecl getchar(void);
               __declspec(dllimport) int __cdecl _getmaxstdio(void);

__declspec(dllimport) char * __cdecl gets_s( char * _Buf, rsize_t _Size);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "gets_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl gets( char *_Buffer);
               int __cdecl _getw( FILE * _File);





                   __declspec(dllimport) int __cdecl _pclose( FILE * _File);
               __declspec(dllimport) FILE * __cdecl _popen( const char * _Command, const char * _Mode);

                   __declspec(dllimport) int __cdecl printf( const char * _Format, ...);

                   __declspec(dllimport) int __cdecl printf_s( const char * _Format, ...);

                   __declspec(dllimport) int __cdecl putc( int _Ch, FILE * _File);
                   __declspec(dllimport) int __cdecl putchar( int _Ch);
                   __declspec(dllimport) int __cdecl puts( const char * _Str);
                   __declspec(dllimport) int __cdecl _putw( int _Word, FILE * _File);


__declspec(dllimport) int __cdecl remove( const char * _Filename);
               __declspec(dllimport) int __cdecl rename( const char * _OldFilename, const char * _NewFilename);
__declspec(dllimport) int __cdecl _unlink( const char * _Filename);

__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_unlink" ". See online help for details.")) __declspec(dllimport) int __cdecl unlink( const char * _Filename);


__declspec(dllimport) void __cdecl rewind( FILE * _File);
                   __declspec(dllimport) int __cdecl _rmtmp(void);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "scanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl scanf( const char * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_scanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _scanf_l( const char * _Format, _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable: 6530)

 __declspec(dllimport) int __cdecl scanf_s( const char * _Format, ...);

                   __declspec(dllimport) int __cdecl _scanf_s_l( const char * _Format, _locale_t _Locale, ...);
#pragma warning(pop)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "setvbuf" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl setbuf( FILE * _File, char * _Buffer);
                   __declspec(dllimport) int __cdecl _setmaxstdio( int _Max);
                   __declspec(dllimport) unsigned int __cdecl _set_output_format( unsigned int _Format);
                   __declspec(dllimport) unsigned int __cdecl _get_output_format(void);
                   __declspec(dllimport) int __cdecl setvbuf( FILE * _File, char * _Buf, int _Mode, size_t _Size);
                   __declspec(dllimport) int __cdecl _snprintf_s( char * _DstBuf, size_t _SizeInBytes, size_t _MaxCount, const char * _Format, ...);


                   __declspec(dllimport) int __cdecl sprintf_s( char * _DstBuf, size_t _SizeInBytes, const char * _Format, ...);


               __declspec(dllimport) int __cdecl _scprintf( const char * _Format, ...);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "sscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl sscanf( const char * _Src, const char * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _sscanf_l( const char * _Src, const char * _Format, _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable: 6530)

 __declspec(dllimport) int __cdecl sscanf_s( const char * _Src, const char * _Format, ...);

                   __declspec(dllimport) int __cdecl _sscanf_s_l( const char * _Src, const char * _Format, _locale_t _Locale, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snscanf( const char * _Src, size_t _MaxCount, const char * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snscanf_l( const char * _Src, size_t _MaxCount, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _snscanf_s( const char * _Src, size_t _MaxCount, const char * _Format, ...);
                   __declspec(dllimport) int __cdecl _snscanf_s_l( const char * _Src, size_t _MaxCount, const char * _Format, _locale_t _Locale, ...);
#pragma warning(pop)
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpfile_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl tmpfile(void);

                   __declspec(dllimport) errno_t __cdecl tmpfile_s( FILE ** _File);
                   __declspec(dllimport) errno_t __cdecl tmpnam_s( char * _Buf, rsize_t _Size);


__declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl tmpnam( char *_Buffer);
                   __declspec(dllimport) int __cdecl ungetc( int _Ch, FILE * _File);
                   __declspec(dllimport) int __cdecl vfprintf( FILE * _File, const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vfscanf( FILE * _File, const char * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vfprintf_s( FILE * _File, const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vfscanf_s( FILE * _File, const char * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vprintf( const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vscanf( const char * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vprintf_s( const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vscanf_s( const char * _Format, va_list _ArgList);

                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl vsnprintf( char * _DstBuf, size_t _MaxCount, const char * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vsnprintf_s( char * _DstBuf, size_t _DstSize, size_t _MaxCount, const char * _Format, va_list _ArgList);


                   __declspec(dllimport) int __cdecl _vsnprintf_s( char * _DstBuf, size_t _SizeInBytes, size_t _MaxCount, const char * _Format, va_list _ArgList);

#pragma warning(push)
#pragma warning(disable: 4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snprintf( char *_Dest, size_t _Count, const char * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnprintf( char *_Dest, size_t _Count, const char * _Format, va_list _Args);
#pragma warning(pop)

__declspec(dllimport) int __cdecl vsprintf_s( char * _DstBuf, size_t _SizeInBytes, const char * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vsscanf_s(const char * _Src, const char * _Format, va_list _ArgList);


#pragma warning(push)
#pragma warning(disable: 4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "sprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl sprintf( char *_Dest, const char * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl vsprintf( char *_Dest, const char * _Format, va_list _Args);
                   __declspec(dllimport) int __cdecl vsscanf(const char * _srcBuf, const char * _Format, va_list _ArgList);
#pragma warning(pop)
 __declspec(dllimport) int __cdecl _vscprintf( const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _snprintf_c( char * _DstBuf, size_t _MaxCount, const char * _Format, ...);
                   __declspec(dllimport) int __cdecl _vsnprintf_c( char *_DstBuf, size_t _MaxCount, const char * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _fprintf_p( FILE * _File, const char * _Format, ...);
                   __declspec(dllimport) int __cdecl _printf_p( const char * _Format, ...);
                   __declspec(dllimport) int __cdecl _sprintf_p( char * _Dst, size_t _MaxCount, const char * _Format, ...);
                   __declspec(dllimport) int __cdecl _vfprintf_p( FILE * _File, const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vprintf_p( const char * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vsprintf_p( char * _Dst, size_t _MaxCount, const char * _Format, va_list _ArgList);
               __declspec(dllimport) int __cdecl _scprintf_p( const char * _Format, ...);
               __declspec(dllimport) int __cdecl _vscprintf_p( const char * _Format, va_list _ArgList);
__declspec(dllimport) int __cdecl _set_printf_count_output( int _Value);
__declspec(dllimport) int __cdecl _get_printf_count_output(void);

                   __declspec(dllimport) int __cdecl _printf_l( const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _printf_p_l( const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _printf_s_l( const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _vprintf_l( const char * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vprintf_p_l( const char * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vprintf_s_l( const char * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _fprintf_l( FILE * _File, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _fprintf_p_l( FILE * _File, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _fprintf_s_l( FILE * _File, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _vfprintf_l( FILE * _File, const char * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vfprintf_p_l( FILE * _File, const char * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vfprintf_s_l( FILE * _File, const char * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _sprintf_l( char * _DstBuf, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _sprintf_p_l( char * _DstBuf, size_t _MaxCount, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _sprintf_s_l( char * _DstBuf, size_t _DstSize, const char * _Format, _locale_t _Locale, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsprintf_l( char * _DstBuf, const char * _Format, _locale_t, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vsprintf_p_l( char * _DstBuf, size_t _MaxCount, const char* _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vsprintf_s_l( char * _DstBuf, size_t _DstSize, const char * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _scprintf_l( const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _scprintf_p_l( const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _vscprintf_l( const char * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vscprintf_p_l( const char * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snprintf_l( char * _DstBuf, size_t _MaxCount, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _snprintf_c_l( char * _DstBuf, size_t _MaxCount, const char * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _snprintf_s_l( char * _DstBuf, size_t _DstSize, size_t _MaxCount, const char * _Format, _locale_t _Locale, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnprintf_l( char * _DstBuf, size_t _MaxCount, const char * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vsnprintf_c_l( char * _DstBuf, size_t _MaxCount, const char *, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vsnprintf_s_l( char * _DstBuf, size_t _DstSize, size_t _MaxCount, const char* _Format, _locale_t _Locale, va_list _ArgList);
# 415 "D:\\vs2013\\VC\\include\\stdio.h" 3
               __declspec(dllimport) FILE * __cdecl _wfsopen( const wchar_t * _Filename, const wchar_t * _Mode, int _ShFlag);

                   __declspec(dllimport) wint_t __cdecl fgetwc( FILE * _File);
                   __declspec(dllimport) wint_t __cdecl _fgetwchar(void);
                   __declspec(dllimport) wint_t __cdecl fputwc( wchar_t _Ch, FILE * _File);
                   __declspec(dllimport) wint_t __cdecl _fputwchar( wchar_t _Ch);
               __declspec(dllimport) wint_t __cdecl getwc( FILE * _File);
               __declspec(dllimport) wint_t __cdecl getwchar(void);
                   __declspec(dllimport) wint_t __cdecl putwc( wchar_t _Ch, FILE * _File);
                   __declspec(dllimport) wint_t __cdecl putwchar( wchar_t _Ch);
                   __declspec(dllimport) wint_t __cdecl ungetwc( wint_t _Ch, FILE * _File);

                   __declspec(dllimport) wchar_t * __cdecl fgetws( wchar_t * _Dst, int _SizeInWords, FILE * _File);
                   __declspec(dllimport) int __cdecl fputws( const wchar_t * _Str, FILE * _File);
                   __declspec(dllimport) wchar_t * __cdecl _getws_s( wchar_t * _Str, size_t _SizeInWords);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_getws_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _getws( wchar_t *_String);
                   __declspec(dllimport) int __cdecl _putws( const wchar_t * _Str);

                   __declspec(dllimport) int __cdecl fwprintf( FILE * _File, const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl fwprintf_s( FILE * _File, const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl wprintf( const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl wprintf_s( const wchar_t * _Format, ...);

               __declspec(dllimport) int __cdecl _scwprintf( const wchar_t * _Format, ...);
                   __declspec(dllimport) int __cdecl vfwprintf( FILE * _File, const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vfwscanf( FILE * _File, const wchar_t * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vfwprintf_s( FILE * _File, const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vfwscanf_s( FILE * _File, const wchar_t * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vwprintf( const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vwscanf( const wchar_t * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl vwprintf_s( const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vwscanf_s( const wchar_t * _Format, va_list _ArgList);



__declspec(dllimport) int __cdecl swprintf_s( wchar_t * _Dst, size_t _SizeInWords, const wchar_t * _Format, ...);



__declspec(dllimport) int __cdecl vswprintf_s( wchar_t * _Dst, size_t _SizeInWords, const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl vswscanf_s(const wchar_t * _Src, const wchar_t * _Format, va_list _ArgList);



                   __declspec(dllimport) int __cdecl vswscanf(const wchar_t * _srcBuf, const wchar_t * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _swprintf_c( wchar_t * _DstBuf, size_t _SizeInWords, const wchar_t * _Format, ...);
                   __declspec(dllimport) int __cdecl _vswprintf_c( wchar_t * _DstBuf, size_t _SizeInWords, const wchar_t * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _snwprintf_s( wchar_t * _DstBuf, size_t _SizeInWords, size_t _MaxCount, const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl _vsnwprintf_s( wchar_t * _DstBuf, size_t _SizeInWords, size_t _MaxCount, const wchar_t * _Format, va_list _ArgList);

#pragma warning(push)
#pragma warning(disable: 4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwprintf( wchar_t *_Dest, size_t _Count, const wchar_t * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnwprintf( wchar_t *_Dest, size_t _Count, const wchar_t * _Format, va_list _Args);
#pragma warning(pop)

 __declspec(dllimport) int __cdecl _fwprintf_p( FILE * _File, const wchar_t * _Format, ...);
                   __declspec(dllimport) int __cdecl _wprintf_p( const wchar_t * _Format, ...);
                   __declspec(dllimport) int __cdecl _vfwprintf_p( FILE * _File, const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vwprintf_p( const wchar_t * _Format, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _swprintf_p( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, ...);
                   __declspec(dllimport) int __cdecl _vswprintf_p( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, va_list _ArgList);
               __declspec(dllimport) int __cdecl _scwprintf_p( const wchar_t * _Format, ...);
               __declspec(dllimport) int __cdecl _vscwprintf_p( const wchar_t * _Format, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _wprintf_l( const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _wprintf_p_l( const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _wprintf_s_l( const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _vwprintf_l( const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vwprintf_p_l( const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vwprintf_s_l( const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _fwprintf_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _fwprintf_p_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _fwprintf_s_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _vfwprintf_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vfwprintf_p_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vfwprintf_s_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(dllimport) int __cdecl _swprintf_c_l( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _swprintf_p_l( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _swprintf_s_l( wchar_t * _DstBuf, size_t _DstSize, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _vswprintf_c_l( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vswprintf_p_l( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vswprintf_s_l( wchar_t * _DstBuf, size_t _DstSize, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);

               __declspec(dllimport) int __cdecl _scwprintf_l( const wchar_t * _Format, _locale_t _Locale, ...);
               __declspec(dllimport) int __cdecl _scwprintf_p_l( const wchar_t * _Format, _locale_t _Locale, ...);
               __declspec(dllimport) int __cdecl _vscwprintf_p_l( const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);

                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwprintf_l( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _snwprintf_s_l( wchar_t * _DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnwprintf_l( wchar_t * _DstBuf, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
                   __declspec(dllimport) int __cdecl _vsnwprintf_s_l( wchar_t * _DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
# 531 "D:\\vs2013\\VC\\include\\stdio.h" 3
#pragma warning(push)
#pragma warning(disable: 4141 4996 4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl _swprintf( wchar_t *_Dest, const wchar_t * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl _vswprintf( wchar_t *_Dest, const wchar_t * _Format, va_list _Args);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "__swprintf_l_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl __swprintf_l( wchar_t *_Dest, const wchar_t * _Format, _locale_t _Plocinfo, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl __vswprintf_l( wchar_t *_Dest, const wchar_t * _Format, _locale_t _Plocinfo, va_list _Args);
#pragma warning(pop)



# 1 "D:\\vs2013\\VC\\include\\swprintf.inl" 1 3
# 34 "D:\\vs2013\\VC\\include\\swprintf.inl" 3
#pragma warning(push)
#pragma warning(disable: 4793 4412)
static __inline int swprintf( wchar_t * _String, size_t _Count, const wchar_t * _Format, ...)
{
    va_list _Arglist;
    int _Ret;
    ( _Arglist = (va_list)( &(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    _Ret = _vswprintf_c_l(_String, _Count, _Format, ((void *)0), _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning(pop)

#pragma warning(push)
#pragma warning(disable: 4412)
static __inline int __cdecl vswprintf( wchar_t * _String, size_t _Count, const wchar_t * _Format, va_list _Ap)
{
    return _vswprintf_c_l(_String, _Count, _Format, ((void *)0), _Ap);
}
#pragma warning(pop)




#pragma warning(push)
#pragma warning(disable: 4793 4412)
static __inline int _swprintf_l( wchar_t * _String, size_t _Count, const wchar_t * _Format, _locale_t _Plocinfo, ...)
{
    va_list _Arglist;
    int _Ret;
    ( _Arglist = (va_list)( &(_Plocinfo) ) + ( (sizeof(_Plocinfo) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    _Ret = _vswprintf_c_l(_String, _Count, _Format, _Plocinfo, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning(pop)

#pragma warning(push)
#pragma warning(disable: 4412)
static __inline int __cdecl _vswprintf_l( wchar_t * _String, size_t _Count, const wchar_t * _Format, _locale_t _Plocinfo, va_list _Ap)
{
    return _vswprintf_c_l(_String, _Count, _Format, _Plocinfo, _Ap);
}
#pragma warning(pop)
# 538 "D:\\vs2013\\VC\\include\\stdio.h" 2 3
# 555 "D:\\vs2013\\VC\\include\\stdio.h" 3
               __declspec(dllimport) wchar_t * __cdecl _wtempnam( const wchar_t * _Directory, const wchar_t * _FilePrefix);





               __declspec(dllimport) int __cdecl _vscwprintf( const wchar_t * _Format, va_list _ArgList);
               __declspec(dllimport) int __cdecl _vscwprintf_l( const wchar_t * _Format, _locale_t _Locale, va_list _ArgList);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "fwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl fwscanf( FILE * _File, const wchar_t * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _fwscanf_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable: 6530)

 __declspec(dllimport) int __cdecl fwscanf_s( FILE * _File, const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl _fwscanf_s_l( FILE * _File, const wchar_t * _Format, _locale_t _Locale, ...);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "swscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl swscanf( const wchar_t * _Src, const wchar_t * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _swscanf_l( const wchar_t * _Src, const wchar_t * _Format, _locale_t _Locale, ...);

                   __declspec(dllimport) int __cdecl swscanf_s( const wchar_t *_Src, const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl _swscanf_s_l( const wchar_t * _Src, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwscanf( const wchar_t * _Src, size_t _MaxCount, const wchar_t * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwscanf_l( const wchar_t * _Src, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, ...);
                   __declspec(dllimport) int __cdecl _snwscanf_s( const wchar_t * _Src, size_t _MaxCount, const wchar_t * _Format, ...);
                   __declspec(dllimport) int __cdecl _snwscanf_s_l( const wchar_t * _Src, size_t _MaxCount, const wchar_t * _Format, _locale_t _Locale, ...);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "wscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl wscanf( const wchar_t * _Format, ...);
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _wscanf_l( const wchar_t * _Format, _locale_t _Locale, ...);

                   __declspec(dllimport) int __cdecl wscanf_s( const wchar_t * _Format, ...);

                   __declspec(dllimport) int __cdecl _wscanf_s_l( const wchar_t * _Format, _locale_t _Locale, ...);
#pragma warning(pop)

 __declspec(dllimport) FILE * __cdecl _wfdopen( int _FileHandle , const wchar_t * _Mode);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl _wfopen( const wchar_t * _Filename, const wchar_t * _Mode);
                   __declspec(dllimport) errno_t __cdecl _wfopen_s( FILE ** _File, const wchar_t * _Filename, const wchar_t * _Mode);
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfreopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl _wfreopen( const wchar_t * _Filename, const wchar_t * _Mode, FILE * _OldFile);
                   __declspec(dllimport) errno_t __cdecl _wfreopen_s( FILE ** _File, const wchar_t * _Filename, const wchar_t * _Mode, FILE * _OldFile);






               __declspec(dllimport) FILE * __cdecl _wpopen( const wchar_t *_Command, const wchar_t * _Mode);

__declspec(dllimport) int __cdecl _wremove( const wchar_t * _Filename);
                   __declspec(dllimport) errno_t __cdecl _wtmpnam_s( wchar_t * _DstBuf, size_t _SizeInWords);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wtmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wtmpnam( wchar_t *_Buffer);

                   __declspec(dllimport) wint_t __cdecl _fgetwc_nolock( FILE * _File);
                   __declspec(dllimport) wint_t __cdecl _fputwc_nolock( wchar_t _Ch, FILE * _File);
                   __declspec(dllimport) wint_t __cdecl _ungetwc_nolock( wint_t _Ch, FILE * _File);
# 670 "D:\\vs2013\\VC\\include\\stdio.h" 3
__declspec(dllimport) void __cdecl _lock_file( FILE * _File);
__declspec(dllimport) void __cdecl _unlock_file( FILE * _File);

                   __declspec(dllimport) int __cdecl _fclose_nolock( FILE * _File);
                   __declspec(dllimport) int __cdecl _fflush_nolock( FILE * _File);
                   __declspec(dllimport) size_t __cdecl _fread_nolock( void * _DstBuf, size_t _ElementSize, size_t _Count, FILE * _File);
                   __declspec(dllimport) size_t __cdecl _fread_nolock_s( void * _DstBuf, size_t _DstSize, size_t _ElementSize, size_t _Count, FILE * _File);
                   __declspec(dllimport) int __cdecl _fseek_nolock( FILE * _File, long _Offset, int _Origin);
               __declspec(dllimport) long __cdecl _ftell_nolock( FILE * _File);
                   __declspec(dllimport) int __cdecl _fseeki64_nolock( FILE * _File, __int64 _Offset, int _Origin);
               __declspec(dllimport) __int64 __cdecl _ftelli64_nolock( FILE * _File);
                   __declspec(dllimport) size_t __cdecl _fwrite_nolock( const void * _DstBuf, size_t _Size, size_t _Count, FILE * _File);
                   __declspec(dllimport) int __cdecl _ungetc_nolock( int _Ch, FILE * _File);
# 709 "D:\\vs2013\\VC\\include\\stdio.h" 3
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_tempnam" ". See online help for details.")) __declspec(dllimport) char * __cdecl tempnam( const char * _Directory, const char * _FilePrefix);





                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fcloseall" ". See online help for details.")) __declspec(dllimport) int __cdecl fcloseall(void);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fdopen" ". See online help for details.")) __declspec(dllimport) FILE * __cdecl fdopen( int _FileHandle, const char * _Format);
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fgetchar" ". See online help for details.")) __declspec(dllimport) int __cdecl fgetchar(void);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fileno" ". See online help for details.")) __declspec(dllimport) int __cdecl fileno( FILE * _File);
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_flushall" ". See online help for details.")) __declspec(dllimport) int __cdecl flushall(void);
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fputchar" ". See online help for details.")) __declspec(dllimport) int __cdecl fputchar( int _Ch);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_getw" ". See online help for details.")) __declspec(dllimport) int __cdecl getw( FILE * _File);
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_putw" ". See online help for details.")) __declspec(dllimport) int __cdecl putw( int _Ch, FILE * _File);
               __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_rmtmp" ". See online help for details.")) __declspec(dllimport) int __cdecl rmtmp(void);







#pragma pack(pop)
# 14 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c" 2
# 28 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c"
void compress_DDS_color_block(
    int channels,
    const unsigned char *const uncompressed,
    unsigned char compressed[8] );





void compress_DDS_alpha_block(
    const unsigned char *const uncompressed,
    unsigned char compressed[8] );


int
 save_image_as_DDS
 (
  const char *filename,
  int width, int height, int channels,
  const unsigned char *const data
 )
{

 FILE *fout;
 unsigned char *DDS_data;
 DDS_header header;
 int DDS_size;

 if( (((void *)0) == filename) ||
  (width < 1) || (height < 1) ||
  (channels < 1) || (channels > 4) ||
  (data == ((void *)0) ) )
 {
  return 0;
 }

 if( (channels & 1) == 1 )
 {

  DDS_data = convert_image_to_DXT1( data, width, height, channels, &DDS_size );
 } else
 {

  DDS_data = convert_image_to_DXT5( data, width, height, channels, &DDS_size );
 }

 memset( &header, 0, sizeof( DDS_header ) );
 header.dwMagic = ('D' << 0) | ('D' << 8) | ('S' << 16) | (' ' << 24);
 header.dwSize = 124;
 header.dwFlags = 0x00000001 | 0x00000002 | 0x00000004 | 0x00001000 | 0x00080000;
 header.dwWidth = width;
 header.dwHeight = height;
 header.dwPitchOrLinearSize = DDS_size;
 header.sPixelFormat.dwSize = 32;
 header.sPixelFormat.dwFlags = 0x00000004;
 if( (channels & 1) == 1 )
 {
  header.sPixelFormat.dwFourCC = ('D' << 0) | ('X' << 8) | ('T' << 16) | ('1' << 24);
 } else
 {
  header.sPixelFormat.dwFourCC = ('D' << 0) | ('X' << 8) | ('T' << 16) | ('5' << 24);
 }
 header.sCaps.dwCaps1 = 0x00001000;

 fout = fopen( filename, "wb");
 fwrite( &header, sizeof( DDS_header ), 1, fout );
 fwrite( DDS_data, 1, DDS_size, fout );
 fclose( fout );

 free( DDS_data );
 return 1;
}

unsigned char* convert_image_to_DXT1(
  const unsigned char *const uncompressed,
  int width, int height, int channels,
  int *out_size )
{
 unsigned char *compressed;
 int i, j, x, y;
 unsigned char ublock[16*3];
 unsigned char cblock[8];
 int index = 0, chan_step = 1;
 int block_count = 0;

 *out_size = 0;
 if( (width < 1) || (height < 1) ||
  (((void *)0) == uncompressed) ||
  (channels < 1) || (channels > 4) )
 {
  return ((void *)0);
 }

 if( channels < 3 )
 {
  chan_step = 0;
 }


 *out_size = ((width+3) >> 2) * ((height+3) >> 2) * 8;
 compressed = (unsigned char*)malloc( *out_size );

 for( j = 0; j < height; j += 4 )
 {
  for( i = 0; i < width; i += 4 )
  {

   int idx = 0;
   int mx = 4, my = 4;
   if( j+4 >= height )
   {
    my = height - j;
   }
   if( i+4 >= width )
   {
    mx = width - i;
   }
   for( y = 0; y < my; ++y )
   {
    for( x = 0; x < mx; ++x )
    {
     ublock[idx++] = uncompressed[(j+y)*width*channels+(i+x)*channels];
     ublock[idx++] = uncompressed[(j+y)*width*channels+(i+x)*channels+chan_step];
     ublock[idx++] = uncompressed[(j+y)*width*channels+(i+x)*channels+chan_step+chan_step];
    }
    for( x = mx; x < 4; ++x )
    {
     ublock[idx++] = ublock[0];
     ublock[idx++] = ublock[1];
     ublock[idx++] = ublock[2];
    }
   }
   for( y = my; y < 4; ++y )
   {
    for( x = 0; x < 4; ++x )
    {
     ublock[idx++] = ublock[0];
     ublock[idx++] = ublock[1];
     ublock[idx++] = ublock[2];
    }
   }

   ++block_count;
   compress_DDS_color_block( 3, ublock, cblock );

   for( x = 0; x < 8; ++x )
   {
    compressed[index++] = cblock[x];
   }
  }
 }
 return compressed;
}

unsigned char* convert_image_to_DXT5(
  const unsigned char *const uncompressed,
  int width, int height, int channels,
  int *out_size )
{
 unsigned char *compressed;
 int i, j, x, y;
 unsigned char ublock[16*4];
 unsigned char cblock[8];
 int index = 0, chan_step = 1;
 int block_count = 0, has_alpha;

 *out_size = 0;
 if( (width < 1) || (height < 1) ||
  (((void *)0) == uncompressed) ||
  (channels < 1) || ( channels > 4) )
 {
  return ((void *)0);
 }

 if( channels < 3 )
 {
  chan_step = 0;
 }

 has_alpha = 1 - (channels & 1);


 *out_size = ((width+3) >> 2) * ((height+3) >> 2) * 16;
 compressed = (unsigned char*)malloc( *out_size );

 for( j = 0; j < height; j += 4 )
 {
  for( i = 0; i < width; i += 4 )
  {

   int idx = 0;
   int mx = 4, my = 4;
   if( j+4 >= height )
   {
    my = height - j;
   }
   if( i+4 >= width )
   {
    mx = width - i;
   }
   for( y = 0; y < my; ++y )
   {
    for( x = 0; x < mx; ++x )
    {
     ublock[idx++] = uncompressed[(j+y)*width*channels+(i+x)*channels];
     ublock[idx++] = uncompressed[(j+y)*width*channels+(i+x)*channels+chan_step];
     ublock[idx++] = uncompressed[(j+y)*width*channels+(i+x)*channels+chan_step+chan_step];
     ublock[idx++] =
      has_alpha * uncompressed[(j+y)*width*channels+(i+x)*channels+channels-1]
      + (1-has_alpha)*255;
    }
    for( x = mx; x < 4; ++x )
    {
     ublock[idx++] = ublock[0];
     ublock[idx++] = ublock[1];
     ublock[idx++] = ublock[2];
     ublock[idx++] = ublock[3];
    }
   }
   for( y = my; y < 4; ++y )
   {
    for( x = 0; x < 4; ++x )
    {
     ublock[idx++] = ublock[0];
     ublock[idx++] = ublock[1];
     ublock[idx++] = ublock[2];
     ublock[idx++] = ublock[3];
    }
   }

   compress_DDS_alpha_block( ublock, cblock );

   for( x = 0; x < 8; ++x )
   {
    compressed[index++] = cblock[x];
   }

   ++block_count;
   compress_DDS_color_block( 4, ublock, cblock );

   for( x = 0; x < 8; ++x )
   {
    compressed[index++] = cblock[x];
   }
  }
 }
 return compressed;
}


int convert_bit_range( int c, int from_bits, int to_bits )
{
 int b = (1 << (from_bits - 1)) + c * ((1 << to_bits) - 1);
 return (b + (b >> from_bits)) >> from_bits;
}

int rgb_to_565( int r, int g, int b )
{
 return
  (convert_bit_range( r, 8, 5 ) << 11) |
  (convert_bit_range( g, 8, 6 ) << 05) |
  (convert_bit_range( b, 8, 5 ) << 00);
}

void rgb_888_from_565( unsigned int c, int *r, int *g, int *b )
{
 *r = convert_bit_range( (c >> 11) & 31, 5, 8 );
 *g = convert_bit_range( (c >> 05) & 63, 6, 8 );
 *b = convert_bit_range( (c >> 00) & 31, 5, 8 );
}

void compute_color_line_STDEV(
  const unsigned char *const uncompressed,
  int channels,
  float point[3], float direction[3] )
{
 const float inv_16 = 1.0f / 16.0f;
 int i;
 float sum_r = 0.0f, sum_g = 0.0f, sum_b = 0.0f;
 float sum_rr = 0.0f, sum_gg = 0.0f, sum_bb = 0.0f;
 float sum_rg = 0.0f, sum_rb = 0.0f, sum_gb = 0.0f;


 for( i = 0; i < 16*channels; i += channels )
 {
  sum_r += uncompressed[i+0];
  sum_rr += uncompressed[i+0] * uncompressed[i+0];
  sum_g += uncompressed[i+1];
  sum_gg += uncompressed[i+1] * uncompressed[i+1];
  sum_b += uncompressed[i+2];
  sum_bb += uncompressed[i+2] * uncompressed[i+2];
  sum_rg += uncompressed[i+0] * uncompressed[i+1];
  sum_rb += uncompressed[i+0] * uncompressed[i+2];
  sum_gb += uncompressed[i+1] * uncompressed[i+2];
 }

 sum_r *= inv_16;
 sum_g *= inv_16;
 sum_b *= inv_16;

 sum_rr -= 16.0f * sum_r * sum_r;
 sum_gg -= 16.0f * sum_g * sum_g;
 sum_bb -= 16.0f * sum_b * sum_b;
 sum_rg -= 16.0f * sum_r * sum_g;
 sum_rb -= 16.0f * sum_r * sum_b;
 sum_gb -= 16.0f * sum_g * sum_b;

 point[0] = sum_r;
 point[1] = sum_g;
 point[2] = sum_b;
# 358 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c"
 sum_r = 1.0f;
 sum_g = 2.718281828f;
 sum_b = 3.141592654f;
 direction[0] = sum_r*sum_rr + sum_g*sum_rg + sum_b*sum_rb;
 direction[1] = sum_r*sum_rg + sum_g*sum_gg + sum_b*sum_gb;
 direction[2] = sum_r*sum_rb + sum_g*sum_gb + sum_b*sum_bb;

 sum_r = direction[0];
 sum_g = direction[1];
 sum_b = direction[2];
 direction[0] = sum_r*sum_rr + sum_g*sum_rg + sum_b*sum_rb;
 direction[1] = sum_r*sum_rg + sum_g*sum_gg + sum_b*sum_gb;
 direction[2] = sum_r*sum_rb + sum_g*sum_gb + sum_b*sum_bb;

 sum_r = direction[0];
 sum_g = direction[1];
 sum_b = direction[2];
 direction[0] = sum_r*sum_rr + sum_g*sum_rg + sum_b*sum_rb;
 direction[1] = sum_r*sum_rg + sum_g*sum_gg + sum_b*sum_gb;
 direction[2] = sum_r*sum_rb + sum_g*sum_gb + sum_b*sum_bb;
# 409 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_dxt.c"
}

void LSE_master_colors_max_min(
  int *cmax, int *cmin,
  int channels,
  const unsigned char *const uncompressed )
{
 int i, j;

 int c0[3], c1[3];

 float sum_x[] = { 0.0f, 0.0f, 0.0f };
 float sum_x2[] = { 0.0f, 0.0f, 0.0f };
 float dot_max = 1.0f, dot_min = -1.0f;
 float vec_len2 = 0.0f;
 float dot;

 if( (channels < 3) || (channels > 4) )
 {
  return;
 }
 compute_color_line_STDEV( uncompressed, channels, sum_x, sum_x2 );
 vec_len2 = 1.0f / ( 0.00001f +
   sum_x2[0]*sum_x2[0] + sum_x2[1]*sum_x2[1] + sum_x2[2]*sum_x2[2] );

 dot_max =
   (
    sum_x2[0] * uncompressed[0] +
    sum_x2[1] * uncompressed[1] +
    sum_x2[2] * uncompressed[2]
   );
 dot_min = dot_max;
 for( i = 1; i < 16; ++i )
 {
  dot =
   (
    sum_x2[0] * uncompressed[i*channels+0] +
    sum_x2[1] * uncompressed[i*channels+1] +
    sum_x2[2] * uncompressed[i*channels+2]
   );
  if( dot < dot_min )
  {
   dot_min = dot;
  } else if( dot > dot_max )
  {
   dot_max = dot;
  }
 }

 dot = sum_x2[0]*sum_x[0] + sum_x2[1]*sum_x[1] + sum_x2[2]*sum_x[2];
 dot_min -= dot;
 dot_max -= dot;

 dot_min *= vec_len2;
 dot_max *= vec_len2;

 for( i = 0; i < 3; ++i )
 {

  c0[i] = (int)(0.5f + sum_x[i] + dot_max * sum_x2[i]);
  if( c0[i] < 0 )
  {
   c0[i] = 0;
  } else if( c0[i] > 255 )
  {
   c0[i] = 255;
  }

  c1[i] = (int)(0.5f + sum_x[i] + dot_min * sum_x2[i]);
  if( c1[i] < 0 )
  {
   c1[i] = 0;
  } else if( c1[i] > 255 )
  {
   c1[i] = 255;
  }
 }

 i = rgb_to_565( c0[0], c0[1], c0[2] );
 j = rgb_to_565( c1[0], c1[1], c1[2] );
 if( i > j )
 {
  *cmax = i;
  *cmin = j;
 } else
 {
  *cmax = j;
  *cmin = i;
 }
}

void
 compress_DDS_color_block
 (
  int channels,
  const unsigned char *const uncompressed,
  unsigned char compressed[8]
 )
{

 int i;
 int next_bit;
 int enc_c0, enc_c1;
 int c0[4], c1[4];
 float color_line[] = { 0.0f, 0.0f, 0.0f, 0.0f };
 float vec_len2 = 0.0f, dot_offset = 0.0f;

 int swizzle4[] = { 0, 2, 3, 1 };

 LSE_master_colors_max_min( &enc_c0, &enc_c1, channels, uncompressed );

 compressed[0] = (enc_c0 >> 0) & 255;
 compressed[1] = (enc_c0 >> 8) & 255;
 compressed[2] = (enc_c1 >> 0) & 255;
 compressed[3] = (enc_c1 >> 8) & 255;

 compressed[4] = 0;
 compressed[5] = 0;
 compressed[6] = 0;
 compressed[7] = 0;

 rgb_888_from_565( enc_c0, &c0[0], &c0[1], &c0[2] );
 rgb_888_from_565( enc_c1, &c1[0], &c1[1], &c1[2] );

 vec_len2 = 0.0f;
 for( i = 0; i < 3; ++i )
 {
  color_line[i] = (float)(c1[i] - c0[i]);
  vec_len2 += color_line[i] * color_line[i];
 }
 if( vec_len2 > 0.0f )
 {
  vec_len2 = 1.0f / vec_len2;
 }

 color_line[0] *= vec_len2;
 color_line[1] *= vec_len2;
 color_line[2] *= vec_len2;

 dot_offset = color_line[0]*c0[0] + color_line[1]*c0[1] + color_line[2]*c0[2];

 next_bit = 8*4;
 for( i = 0; i < 16; ++i )
 {


  int next_value = 0;
  float dot_product =
   color_line[0] * uncompressed[i*channels+0] +
   color_line[1] * uncompressed[i*channels+1] +
   color_line[2] * uncompressed[i*channels+2] -
   dot_offset;

  next_value = (int)( dot_product * 3.0f + 0.5f );
  if( next_value > 3 )
  {
   next_value = 3;
  } else if( next_value < 0 )
  {
   next_value = 0;
  }

  compressed[next_bit >> 3] |= swizzle4[ next_value ] << (next_bit & 7);
  next_bit += 2;
 }

}

void
 compress_DDS_alpha_block
 (
  const unsigned char *const uncompressed,
  unsigned char compressed[8]
 )
{

 int i;
 int next_bit;
 int a0, a1;
 float scale_me;

 int swizzle8[] = { 1, 7, 6, 5, 4, 3, 2, 0 };

 a0 = a1 = uncompressed[3];
 for( i = 4+3; i < 16*4; i += 4 )
 {
  if( uncompressed[i] > a0 )
  {
   a0 = uncompressed[i];
  } else if( uncompressed[i] < a1 )
  {
   a1 = uncompressed[i];
  }
 }

 compressed[0] = a0;
 compressed[1] = a1;

 compressed[2] = 0;
 compressed[3] = 0;
 compressed[4] = 0;
 compressed[5] = 0;
 compressed[6] = 0;
 compressed[7] = 0;

 next_bit = 8*2;
 scale_me = 7.9999f / (a0 - a1);
 for( i = 3; i < 16*4; i += 4 )
 {

  int svalue;
  int value = (int)((uncompressed[i] - a1) * scale_me);
  svalue = swizzle8[ value&7 ];

  compressed[next_bit >> 3] |= svalue << (next_bit & 7);
  if( (next_bit & 7) > 5 )
  {

   compressed[1 + (next_bit >> 3)] |= svalue >> (8 - (next_bit & 7) );
  }
  next_bit += 3;
 }

}
