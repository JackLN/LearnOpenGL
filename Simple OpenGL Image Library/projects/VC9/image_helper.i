# 1 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_helper.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 298 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_helper.c" 2








# 1 "E:\\shawnNan\\OpenGLTest\\Simple OpenGL Image Library\\src/image_helper.h" 1
# 22 "E:\\shawnNan\\OpenGLTest\\Simple OpenGL Image Library\\src/image_helper.h"
int
 up_scale_image
 (
  const unsigned char* const orig,
  int width, int height, int channels,
  unsigned char* resampled,
  int resampled_width, int resampled_height
 );







int
 mipmap_image
 (
  const unsigned char* const orig,
  int width, int height, int channels,
  unsigned char* resampled,
  int block_size_x, int block_size_y
 );
# 53 "E:\\shawnNan\\OpenGLTest\\Simple OpenGL Image Library\\src/image_helper.h"
int
 scale_image_RGB_to_NTSC_safe
 (
  unsigned char* orig,
  int width, int height, int channels
 );
# 67 "E:\\shawnNan\\OpenGLTest\\Simple OpenGL Image Library\\src/image_helper.h"
int
 convert_RGB_to_YCoCg
 (
  unsigned char* orig,
  int width, int height, int channels
 );





int
 convert_YCoCg_to_RGB
 (
  unsigned char* orig,
  int width, int height, int channels
 );






int
 RGBE_to_RGBdivA
 (
  unsigned char *image,
  int width, int height,
  int rescale_to_max
 );






int
 RGBE_to_RGBdivA2
 (
  unsigned char *image,
  int width, int height,
  int rescale_to_max
 );
# 9 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_helper.c" 2

# 1 "D:\\vs2013\\VC\\include\\stdlib.h" 1 3
# 21 "D:\\vs2013\\VC\\include\\stdlib.h" 3
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
# 10 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_helper.c" 2

# 1 "D:\\vs2013\\VC\\include\\math.h" 1 3
# 18 "D:\\vs2013\\VC\\include\\math.h" 3
# 1 "D:\\vs2013\\VC\\include\\crtdefs.h" 1 3
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
# 11 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_helper.c" 2



int
 up_scale_image
 (
  const unsigned char* const orig,
  int width, int height, int channels,
  unsigned char* resampled,
  int resampled_width, int resampled_height
 )
{
 float dx, dy;
 int x, y, c;


    if ( (width < 1) || (height < 1) ||
            (resampled_width < 2) || (resampled_height < 2) ||
            (channels < 1) ||
            (((void *)0) == orig) || (((void *)0) == resampled) )
    {

        return 0;
    }




    dx = (width - 1.0f) / (resampled_width - 1.0f);
    dy = (height - 1.0f) / (resampled_height - 1.0f);
    for ( y = 0; y < resampled_height; ++y )
    {

     float sampley = y * dy;
     int inty = (int)sampley;

  if( inty > height - 2 ) { inty = height - 2; }
  sampley -= inty;
        for ( x = 0; x < resampled_width; ++x )
        {
   float samplex = x * dx;
   int intx = (int)samplex;
   int base_index;


   if( intx > width - 2 ) { intx = width - 2; }
   samplex -= intx;

   base_index = (inty * width + intx) * channels;
            for ( c = 0; c < channels; ++c )
            {

    float value = 0.5f;
    value += orig[base_index]
       *(1.0f-samplex)*(1.0f-sampley);
    value += orig[base_index+channels]
       *(samplex)*(1.0f-sampley);
    value += orig[base_index+width*channels]
       *(1.0f-samplex)*(sampley);
    value += orig[base_index+width*channels+channels]
       *(samplex)*(sampley);

    ++base_index;

             resampled[y*resampled_width*channels+x*channels+c] =
      (unsigned char)(value);
            }
        }
    }

    return 1;
}

int
 mipmap_image
 (
  const unsigned char* const orig,
  int width, int height, int channels,
  unsigned char* resampled,
  int block_size_x, int block_size_y
 )
{
 int mip_width, mip_height;
 int i, j, c;


 if( (width < 1) || (height < 1) ||
  (channels < 1) || (orig == ((void *)0)) ||
  (resampled == ((void *)0)) ||
  (block_size_x < 1) || (block_size_y < 1) )
 {

  return 0;
 }
 mip_width = width / block_size_x;
 mip_height = height / block_size_y;
 if( mip_width < 1 )
 {
  mip_width = 1;
 }
 if( mip_height < 1 )
 {
  mip_height = 1;
 }
 for( j = 0; j < mip_height; ++j )
 {
  for( i = 0; i < mip_width; ++i )
  {
   for( c = 0; c < channels; ++c )
   {
    const int index = (j*block_size_y)*width*channels + (i*block_size_x)*channels + c;
    int sum_value;
    int u,v;
    int u_block = block_size_x;
    int v_block = block_size_y;
    int block_area;


    if( block_size_x * (i+1) > width )
    {
     u_block = width - i*block_size_y;
    }
    if( block_size_y * (j+1) > height )
    {
     v_block = height - j*block_size_y;
    }
    block_area = u_block*v_block;



    sum_value = block_area >> 1;
    for( v = 0; v < v_block; ++v )
    for( u = 0; u < u_block; ++u )
    {
     sum_value += orig[index + v*width*channels + u*channels];
    }
    resampled[j*mip_width*channels + i*channels + c] = sum_value / block_area;
   }
  }
 }
 return 1;
}

int
 scale_image_RGB_to_NTSC_safe
 (
  unsigned char* orig,
  int width, int height, int channels
 )
{
 const float scale_lo = 16.0f - 0.499f;
 const float scale_hi = 235.0f + 0.499f;
 int i, j;
 int nc = channels;
 unsigned char scale_LUT[256];

 if( (width < 1) || (height < 1) ||
  (channels < 1) || (orig == ((void *)0)) )
 {

  return 0;
 }

 for( i = 0; i < 256; ++i )
 {
  scale_LUT[i] = (unsigned char)((scale_hi - scale_lo) * i / 255.0f + scale_lo);
 }

 nc -= 1 - (channels & 1);

 for( i = 0; i < width*height*channels; i += channels )
 {
  for( j = 0; j < nc; ++j )
  {
   orig[i+j] = scale_LUT[orig[i+j]];
  }
 }
 return 1;
}

unsigned char clamp_byte( int x ) { return ( (x) < 0 ? (0) : ( (x) > 255 ? 255 : (x) ) ); }
# 200 "e:\\shawnnan\\opengltest\\simple opengl image library\\src\\image_helper.c"
int
 convert_RGB_to_YCoCg
 (
  unsigned char* orig,
  int width, int height, int channels
 )
{
 int i;

 if( (width < 1) || (height < 1) ||
  (channels < 3) || (channels > 4) ||
  (orig == ((void *)0)) )
 {

  return -1;
 }

 if( channels == 3 )
 {
  for( i = 0; i < width*height*3; i += 3 )
  {
   int r = orig[i+0];
   int g = (orig[i+1] + 1) >> 1;
   int b = orig[i+2];
   int tmp = (2 + r + b) >> 2;

   orig[i+0] = clamp_byte( 128 + ((r - b + 1) >> 1) );

   orig[i+1] = clamp_byte( g + tmp );

   orig[i+2] = clamp_byte( 128 + g - tmp );
  }
 } else
 {
  for( i = 0; i < width*height*4; i += 4 )
  {
   int r = orig[i+0];
   int g = (orig[i+1] + 1) >> 1;
   int b = orig[i+2];
   unsigned char a = orig[i+3];
   int tmp = (2 + r + b) >> 2;

   orig[i+0] = clamp_byte( 128 + ((r - b + 1) >> 1) );

   orig[i+1] = clamp_byte( 128 + g - tmp );

   orig[i+2] = a;

   orig[i+3] = clamp_byte( g + tmp );
  }
 }

 return 0;
}





int
 convert_YCoCg_to_RGB
 (
  unsigned char* orig,
  int width, int height, int channels
 )
{
 int i;

 if( (width < 1) || (height < 1) ||
  (channels < 3) || (channels > 4) ||
  (orig == ((void *)0)) )
 {

  return -1;
 }

 if( channels == 3 )
 {
  for( i = 0; i < width*height*3; i += 3 )
  {
   int co = orig[i+0] - 128;
   int y = orig[i+1];
   int cg = orig[i+2] - 128;

   orig[i+0] = clamp_byte( y + co - cg );

   orig[i+1] = clamp_byte( y + cg );

   orig[i+2] = clamp_byte( y - co - cg );
  }
 } else
 {
  for( i = 0; i < width*height*4; i += 4 )
  {
   int co = orig[i+0] - 128;
   int cg = orig[i+1] - 128;
   unsigned char a = orig[i+2];
   int y = orig[i+3];

   orig[i+0] = clamp_byte( y + co - cg );

   orig[i+1] = clamp_byte( y + cg );

   orig[i+2] = clamp_byte( y - co - cg );

   orig[i+3] = a;
  }
 }

 return 0;
}

float
find_max_RGBE
(
 unsigned char *image,
    int width, int height
)
{
 float max_val = 0.0f;
 unsigned char *img = image;
 int i, j;
 for( i = width * height; i > 0; --i )
 {

  float scale = ldexp( 1.0f / 255.0f, (int)(img[3]) - 128 );
  for( j = 0; j < 3; ++j )
  {
   if( img[j] * scale > max_val )
   {
    max_val = img[j] * scale;
   }
  }

  img += 4;
 }
 return max_val;
}

int
RGBE_to_RGBdivA
(
    unsigned char *image,
    int width, int height,
    int rescale_to_max
)
{

 int i, iv;
 unsigned char *img = image;
 float scale = 1.0f;

 if( (!image) || (width < 1) || (height < 1) )
 {
  return 0;
 }

 if( rescale_to_max )
 {
  scale = 255.0f / find_max_RGBE( image, width, height );
 }
 for( i = width * height; i > 0; --i )
 {

  float r,g,b,e, m;

  e = scale * ldexp( 1.0f / 255.0f, (int)(img[3]) - 128 );
  r = e * img[0];
  g = e * img[1];
  b = e * img[2];
  m = (r > g) ? r : g;
  m = (b > m) ? b : m;

  iv = (m != 0.0f) ? (int)(255.0f / m) : 1.0f;
  iv = (iv < 1) ? 1 : iv;
  img[3] = (iv > 255) ? 255 : iv;
  iv = (int)(img[3] * r + 0.5f);
  img[0] = (iv > 255) ? 255 : iv;
  iv = (int)(img[3] * g + 0.5f);
  img[1] = (iv > 255) ? 255 : iv;
  iv = (int)(img[3] * b + 0.5f);
  img[2] = (iv > 255) ? 255 : iv;

  img += 4;
 }
 return 1;
}

int
RGBE_to_RGBdivA2
(
    unsigned char *image,
    int width, int height,
    int rescale_to_max
)
{

 int i, iv;
 unsigned char *img = image;
 float scale = 1.0f;

 if( (!image) || (width < 1) || (height < 1) )
 {
  return 0;
 }

 if( rescale_to_max )
 {
  scale = 255.0f * 255.0f / find_max_RGBE( image, width, height );
 }
 for( i = width * height; i > 0; --i )
 {

  float r,g,b,e, m;

  e = scale * ldexp( 1.0f / 255.0f, (int)(img[3]) - 128 );
  r = e * img[0];
  g = e * img[1];
  b = e * img[2];
  m = (r > g) ? r : g;
  m = (b > m) ? b : m;

  iv = (m != 0.0f) ? (int)sqrtf( 255.0f * 255.0f / m ) : 1.0f;
  iv = (iv < 1) ? 1 : iv;
  img[3] = (iv > 255) ? 255 : iv;
  iv = (int)(img[3] * img[3] * r / 255.0f + 0.5f);
  img[0] = (iv > 255) ? 255 : iv;
  iv = (int)(img[3] * img[3] * g / 255.0f + 0.5f);
  img[1] = (iv > 255) ? 255 : iv;
  iv = (int)(img[3] * img[3] * b / 255.0f + 0.5f);
  img[2] = (iv > 255) ? 255 : iv;

  img += 4;
 }
 return 1;
}
