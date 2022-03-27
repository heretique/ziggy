pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __builtin_va_list = [*c]u8;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list; // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:584:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:581:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() void;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort,
    wCountry: c_ushort,
    wCodePage: c_ushort,
};
pub const LC_ID = struct_tagLC_ID;
const struct_unnamed_1 = extern struct {
    locale: [*c]u8,
    wlocale: [*c]wchar_t,
    refcount: [*c]c_int,
    wrefcount: [*c]c_int,
};
pub const struct_lconv = opaque {};
pub const struct___lc_time_data = opaque {};
pub const struct_threadlocaleinfostruct = extern struct {
    refcount: c_int,
    lc_codepage: c_uint,
    lc_collate_cp: c_uint,
    lc_handle: [6]c_ulong,
    lc_id: [6]LC_ID,
    lc_category: [6]struct_unnamed_1,
    lc_clike: c_int,
    mb_cur_max: c_int,
    lconv_intl_refcount: [*c]c_int,
    lconv_num_refcount: [*c]c_int,
    lconv_mon_refcount: [*c]c_int,
    lconv: ?*struct_lconv,
    ctype1_refcount: [*c]c_int,
    ctype1: [*c]c_ushort,
    pctype: [*c]const c_ushort,
    pclmap: [*c]const u8,
    pcumap: [*c]const u8,
    lc_time_curr: ?*struct___lc_time_data,
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo,
    mbcinfo: pthreadmbcinfo,
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = c_short;
pub const uint_least16_t = c_ushort;
pub const int_least32_t = c_int;
pub const uint_least32_t = c_uint;
pub const int_least64_t = c_longlong;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_longlong;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub extern fn _itow_s(_Val: c_int, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _ltow_s(_Val: c_long, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _ultow_s(_Val: c_ulong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _wgetenv_s(_ReturnSize: [*c]usize, _DstBuf: [*c]wchar_t, _DstSizeInWords: usize, _VarName: [*c]const wchar_t) errno_t;
pub extern fn _wdupenv_s(_Buffer: [*c][*c]wchar_t, _BufferSizeInWords: [*c]usize, _VarName: [*c]const wchar_t) errno_t;
pub extern fn _i64tow_s(_Val: c_longlong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _ui64tow_s(_Val: c_ulonglong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;
pub extern fn _wmakepath_s(_PathResult: [*c]wchar_t, _SizeInWords: usize, _Drive: [*c]const wchar_t, _Dir: [*c]const wchar_t, _Filename: [*c]const wchar_t, _Ext: [*c]const wchar_t) errno_t;
pub extern fn _wputenv_s(_Name: [*c]const wchar_t, _Value: [*c]const wchar_t) errno_t;
pub extern fn _wsearchenv_s(_Filename: [*c]const wchar_t, _EnvVar: [*c]const wchar_t, _ResultPath: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wsplitpath_s(_FullPath: [*c]const wchar_t, _Drive: [*c]wchar_t, _DriveSizeInWords: usize, _Dir: [*c]wchar_t, _DirSizeInWords: usize, _Filename: [*c]wchar_t, _FilenameSizeInWords: usize, _Ext: [*c]wchar_t, _ExtSizeInWords: usize) errno_t;
pub const _onexit_t = ?fn () callconv(.C) c_int;
pub const struct__div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const div_t = struct__div_t;
pub const struct__ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const ldiv_t = struct__ldiv_t;
pub const _LDOUBLE = extern struct {
    ld: [10]u8,
};
pub const _CRT_DOUBLE = extern struct {
    x: f64,
};
pub const _CRT_FLOAT = extern struct {
    f: f32,
};
pub const _LONGDOUBLE = extern struct {
    x: c_longdouble,
};
pub const _LDBL12 = extern struct {
    ld12: [12]u8,
};
pub extern var __imp___mb_cur_max: [*c]c_int;
pub extern fn ___mb_cur_max_func() c_int;
pub const _purecall_handler = ?fn () callconv(.C) void;
pub extern fn _set_purecall_handler(_Handler: _purecall_handler) _purecall_handler;
pub extern fn _get_purecall_handler() _purecall_handler;
pub const _invalid_parameter_handler = ?fn ([*c]const wchar_t, [*c]const wchar_t, [*c]const wchar_t, c_uint, usize) callconv(.C) void;
pub extern fn _set_invalid_parameter_handler(_Handler: _invalid_parameter_handler) _invalid_parameter_handler;
pub extern fn _get_invalid_parameter_handler() _invalid_parameter_handler;
pub extern fn _errno() [*c]c_int;
pub extern fn _set_errno(_Value: c_int) errno_t;
pub extern fn _get_errno(_Value: [*c]c_int) errno_t;
pub extern fn __doserrno() [*c]c_ulong;
pub extern fn _set_doserrno(_Value: c_ulong) errno_t;
pub extern fn _get_doserrno(_Value: [*c]c_ulong) errno_t;
pub extern var _sys_errlist: [1][*c]u8;
pub extern var _sys_nerr: c_int;
pub extern fn __p___argv() [*c][*c][*c]u8;
pub extern fn __p__fmode() [*c]c_int;
pub extern fn _get_pgmptr(_Value: [*c][*c]u8) errno_t;
pub extern fn _get_wpgmptr(_Value: [*c][*c]wchar_t) errno_t;
pub extern fn _set_fmode(_Mode: c_int) errno_t;
pub extern fn _get_fmode(_PMode: [*c]c_int) errno_t;
pub extern var __imp___argc: [*c]c_int;
pub extern var __imp___argv: [*c][*c][*c]u8;
pub extern var __imp___wargv: [*c][*c][*c]wchar_t;
pub extern var __imp__environ: [*c][*c][*c]u8;
pub extern var __imp__wenviron: [*c][*c][*c]wchar_t;
pub extern var __imp__pgmptr: [*c][*c]u8;
pub extern var __imp__wpgmptr: [*c][*c]wchar_t;
pub extern var __imp__osplatform: [*c]c_uint;
pub extern var __imp__osver: [*c]c_uint;
pub extern var __imp__winver: [*c]c_uint;
pub extern var __imp__winmajor: [*c]c_uint;
pub extern var __imp__winminor: [*c]c_uint;
pub extern fn _get_osplatform(_Value: [*c]c_uint) errno_t;
pub extern fn _get_osver(_Value: [*c]c_uint) errno_t;
pub extern fn _get_winver(_Value: [*c]c_uint) errno_t;
pub extern fn _get_winmajor(_Value: [*c]c_uint) errno_t;
pub extern fn _get_winminor(_Value: [*c]c_uint) errno_t;
pub extern fn exit(_Code: c_int) noreturn;
pub extern fn _exit(_Code: c_int) noreturn;
pub fn _Exit(arg_status: c_int) callconv(.C) noreturn {
    var status = arg_status;
    _exit(status);
}
pub extern fn abort() noreturn;
pub extern fn _set_abort_behavior(_Flags: c_uint, _Mask: c_uint) c_uint;
pub extern fn abs(_X: c_int) c_int;
pub extern fn labs(_X: c_long) c_long; // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:421:12: warning: TODO implement function '__builtin_llabs' in std.zig.c_builtins
// C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:420:41: warning: unable to translate function, demoted to extern
pub extern fn _abs64(arg_x: c_longlong) c_longlong;
pub extern fn atexit(?fn () callconv(.C) void) c_int;
pub extern fn atof(_String: [*c]const u8) f64;
pub extern fn _atof_l(_String: [*c]const u8, _Locale: _locale_t) f64;
pub extern fn atoi(_Str: [*c]const u8) c_int;
pub extern fn _atoi_l(_Str: [*c]const u8, _Locale: _locale_t) c_int;
pub extern fn atol(_Str: [*c]const u8) c_long;
pub extern fn _atol_l(_Str: [*c]const u8, _Locale: _locale_t) c_long;
pub extern fn bsearch(_Key: ?*const anyopaque, _Base: ?*const anyopaque, _NumOfElements: usize, _SizeOfElements: usize, _PtFuncCompare: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) ?*anyopaque;
pub extern fn qsort(_Base: ?*anyopaque, _NumOfElements: usize, _SizeOfElements: usize, _PtFuncCompare: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn _byteswap_ushort(_Short: c_ushort) c_ushort;
pub extern fn _byteswap_ulong(_Long: c_ulong) c_ulong;
pub extern fn _byteswap_uint64(_Int64: c_ulonglong) c_ulonglong;
pub extern fn div(_Numerator: c_int, _Denominator: c_int) div_t;
pub extern fn getenv(_VarName: [*c]const u8) [*c]u8;
pub extern fn _itoa(_Value: c_int, _Dest: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn _i64toa(_Val: c_longlong, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn _ui64toa(_Val: c_ulonglong, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn _atoi64(_String: [*c]const u8) c_longlong;
pub extern fn _atoi64_l(_String: [*c]const u8, _Locale: _locale_t) c_longlong;
pub extern fn _strtoi64(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_longlong;
pub extern fn _strtoi64_l(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_longlong;
pub extern fn _strtoui64(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_ulonglong;
pub extern fn _strtoui64_l(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_ulonglong;
pub extern fn ldiv(_Numerator: c_long, _Denominator: c_long) ldiv_t;
pub extern fn _ltoa(_Value: c_long, _Dest: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn mblen(_Ch: [*c]const u8, _MaxCount: usize) c_int;
pub extern fn _mblen_l(_Ch: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;
pub extern fn _mbstrlen(_Str: [*c]const u8) usize;
pub extern fn _mbstrlen_l(_Str: [*c]const u8, _Locale: _locale_t) usize;
pub extern fn _mbstrnlen(_Str: [*c]const u8, _MaxCount: usize) usize;
pub extern fn _mbstrnlen_l(_Str: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) usize;
pub extern fn mbtowc(noalias _DstCh: [*c]wchar_t, noalias _SrcCh: [*c]const u8, _SrcSizeInBytes: usize) c_int;
pub extern fn _mbtowc_l(noalias _DstCh: [*c]wchar_t, noalias _SrcCh: [*c]const u8, _SrcSizeInBytes: usize, _Locale: _locale_t) c_int;
pub extern fn mbstowcs(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const u8, _MaxCount: usize) usize;
pub extern fn _mbstowcs_l(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) usize;
pub extern fn mkstemp(template_name: [*c]u8) c_int;
pub extern fn rand() c_int;
pub extern fn _set_error_mode(_Mode: c_int) c_int;
pub extern fn srand(_Seed: c_uint) void;
pub extern fn __mingw_strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;
pub fn strtod(noalias arg__Str: [*c]const u8, noalias arg__EndPtr: [*c][*c]u8) callconv(.C) f64 {
    var _Str = arg__Str;
    var _EndPtr = arg__EndPtr;
    return __mingw_strtod(_Str, _EndPtr);
}
pub extern fn __mingw_strtof(noalias [*c]const u8, noalias [*c][*c]u8) f32;
pub fn strtof(noalias arg__Str: [*c]const u8, noalias arg__EndPtr: [*c][*c]u8) callconv(.C) f32 {
    var _Str = arg__Str;
    var _EndPtr = arg__EndPtr;
    return __mingw_strtof(_Str, _EndPtr);
}
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn __strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;
pub extern fn __mingw_strtold(noalias [*c]const u8, noalias [*c][*c]u8) c_longdouble;
pub extern fn _strtod_l(noalias _Str: [*c]const u8, noalias _EndPtr: [*c][*c]u8, _Locale: _locale_t) f64;
pub extern fn strtol(_Str: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_long;
pub extern fn _strtol_l(noalias _Str: [*c]const u8, noalias _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_long;
pub extern fn strtoul(_Str: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_ulong;
pub extern fn _strtoul_l(noalias _Str: [*c]const u8, noalias _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_ulong;
pub extern fn system(_Command: [*c]const u8) c_int;
pub extern fn _ultoa(_Value: c_ulong, _Dest: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn wctomb(_MbCh: [*c]u8, _WCh: wchar_t) c_int;
pub extern fn _wctomb_l(_MbCh: [*c]u8, _WCh: wchar_t, _Locale: _locale_t) c_int;
pub extern fn wcstombs(noalias _Dest: [*c]u8, noalias _Source: [*c]const wchar_t, _MaxCount: usize) usize;
pub extern fn _wcstombs_l(noalias _Dest: [*c]u8, noalias _Source: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) usize;
pub extern fn calloc(_NumOfElements: c_ulonglong, _SizeOfElements: c_ulonglong) ?*anyopaque;
pub extern fn free(_Memory: ?*anyopaque) void;
pub extern fn malloc(_Size: c_ulonglong) ?*anyopaque;
pub extern fn realloc(_Memory: ?*anyopaque, _NewSize: c_ulonglong) ?*anyopaque;
pub extern fn _recalloc(_Memory: ?*anyopaque, _Count: usize, _Size: usize) ?*anyopaque;
pub extern fn _aligned_free(_Memory: ?*anyopaque) void;
pub extern fn _aligned_malloc(_Size: usize, _Alignment: usize) ?*anyopaque;
pub extern fn _aligned_offset_malloc(_Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;
pub extern fn _aligned_realloc(_Memory: ?*anyopaque, _Size: usize, _Alignment: usize) ?*anyopaque;
pub extern fn _aligned_recalloc(_Memory: ?*anyopaque, _Count: usize, _Size: usize, _Alignment: usize) ?*anyopaque;
pub extern fn _aligned_offset_realloc(_Memory: ?*anyopaque, _Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;
pub extern fn _aligned_offset_recalloc(_Memory: ?*anyopaque, _Count: usize, _Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;
pub extern fn _itow(_Value: c_int, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _ltow(_Value: c_long, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _ultow(_Value: c_ulong, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn __mingw_wcstod(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t) f64;
pub extern fn __mingw_wcstof(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t) f32;
pub extern fn __mingw_wcstold(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t) c_longdouble;
pub fn wcstod(noalias arg__Str: [*c]const wchar_t, noalias arg__EndPtr: [*c][*c]wchar_t) callconv(.C) f64 {
    var _Str = arg__Str;
    var _EndPtr = arg__EndPtr;
    return __mingw_wcstod(_Str, _EndPtr);
}
pub fn wcstof(noalias arg__Str: [*c]const wchar_t, noalias arg__EndPtr: [*c][*c]wchar_t) callconv(.C) f32 {
    var _Str = arg__Str;
    var _EndPtr = arg__EndPtr;
    return __mingw_wcstof(_Str, _EndPtr);
}
pub extern fn wcstold(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t) c_longdouble;
pub extern fn _wcstod_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Locale: _locale_t) f64;
pub extern fn wcstol(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_long;
pub extern fn _wcstol_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_long;
pub extern fn wcstoul(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_ulong;
pub extern fn _wcstoul_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_ulong;
pub extern fn _wgetenv(_VarName: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _wsystem(_Command: [*c]const wchar_t) c_int;
pub extern fn _wtof(_Str: [*c]const wchar_t) f64;
pub extern fn _wtof_l(_Str: [*c]const wchar_t, _Locale: _locale_t) f64;
pub extern fn _wtoi(_Str: [*c]const wchar_t) c_int;
pub extern fn _wtoi_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_int;
pub extern fn _wtol(_Str: [*c]const wchar_t) c_long;
pub extern fn _wtol_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_long;
pub extern fn _i64tow(_Val: c_longlong, _DstBuf: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _ui64tow(_Val: c_ulonglong, _DstBuf: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;
pub extern fn _wtoi64(_Str: [*c]const wchar_t) c_longlong;
pub extern fn _wtoi64_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_longlong;
pub extern fn _wcstoi64(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_longlong;
pub extern fn _wcstoi64_l(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_longlong;
pub extern fn _wcstoui64(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_ulonglong;
pub extern fn _wcstoui64_l(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_ulonglong;
pub extern fn _putenv(_EnvString: [*c]const u8) c_int;
pub extern fn _wputenv(_EnvString: [*c]const wchar_t) c_int;
pub extern fn _fullpath(_FullPath: [*c]u8, _Path: [*c]const u8, _SizeInBytes: usize) [*c]u8;
pub extern fn _ecvt(_Val: f64, _NumOfDigits: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;
pub extern fn _fcvt(_Val: f64, _NumOfDec: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;
pub extern fn _gcvt(_Val: f64, _NumOfDigits: c_int, _DstBuf: [*c]u8) [*c]u8;
pub extern fn _atodbl(_Result: [*c]_CRT_DOUBLE, _Str: [*c]u8) c_int;
pub extern fn _atoldbl(_Result: [*c]_LDOUBLE, _Str: [*c]u8) c_int;
pub extern fn _atoflt(_Result: [*c]_CRT_FLOAT, _Str: [*c]u8) c_int;
pub extern fn _atodbl_l(_Result: [*c]_CRT_DOUBLE, _Str: [*c]u8, _Locale: _locale_t) c_int;
pub extern fn _atoldbl_l(_Result: [*c]_LDOUBLE, _Str: [*c]u8, _Locale: _locale_t) c_int;
pub extern fn _atoflt_l(_Result: [*c]_CRT_FLOAT, _Str: [*c]u8, _Locale: _locale_t) c_int;
pub extern fn _lrotl(c_ulong, c_int) c_ulong;
pub extern fn _lrotr(c_ulong, c_int) c_ulong;
pub extern fn _makepath(_Path: [*c]u8, _Drive: [*c]const u8, _Dir: [*c]const u8, _Filename: [*c]const u8, _Ext: [*c]const u8) void;
pub extern fn _onexit(_Func: _onexit_t) _onexit_t;
pub extern fn perror(_ErrMsg: [*c]const u8) void;
pub extern fn _rotl64(_Val: c_ulonglong, _Shift: c_int) c_ulonglong;
pub extern fn _rotr64(Value: c_ulonglong, Shift: c_int) c_ulonglong;
pub extern fn _rotr(_Val: c_uint, _Shift: c_int) c_uint;
pub extern fn _rotl(_Val: c_uint, _Shift: c_int) c_uint;
pub extern fn _searchenv(_Filename: [*c]const u8, _EnvVar: [*c]const u8, _ResultPath: [*c]u8) void;
pub extern fn _splitpath(_FullPath: [*c]const u8, _Drive: [*c]u8, _Dir: [*c]u8, _Filename: [*c]u8, _Ext: [*c]u8) void;
pub extern fn _swab(_Buf1: [*c]u8, _Buf2: [*c]u8, _SizeInBytes: c_int) void;
pub extern fn _wfullpath(_FullPath: [*c]wchar_t, _Path: [*c]const wchar_t, _SizeInWords: usize) [*c]wchar_t;
pub extern fn _wmakepath(_ResultPath: [*c]wchar_t, _Drive: [*c]const wchar_t, _Dir: [*c]const wchar_t, _Filename: [*c]const wchar_t, _Ext: [*c]const wchar_t) void;
pub extern fn _wperror(_ErrMsg: [*c]const wchar_t) void;
pub extern fn _wsearchenv(_Filename: [*c]const wchar_t, _EnvVar: [*c]const wchar_t, _ResultPath: [*c]wchar_t) void;
pub extern fn _wsplitpath(_FullPath: [*c]const wchar_t, _Drive: [*c]wchar_t, _Dir: [*c]wchar_t, _Filename: [*c]wchar_t, _Ext: [*c]wchar_t) void;
pub const _beep = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:681:24
pub const _seterrormode = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:683:24
pub const _sleep = @compileError("unable to resolve function type TypeClass.MacroQualified"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:684:24
pub extern fn ecvt(_Val: f64, _NumOfDigits: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;
pub extern fn fcvt(_Val: f64, _NumOfDec: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;
pub extern fn gcvt(_Val: f64, _NumOfDigits: c_int, _DstBuf: [*c]u8) [*c]u8;
pub extern fn itoa(_Val: c_int, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn ltoa(_Val: c_long, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn putenv(_EnvString: [*c]const u8) c_int;
pub extern fn swab(_Buf1: [*c]u8, _Buf2: [*c]u8, _SizeInBytes: c_int) void;
pub extern fn ultoa(_Val: c_ulong, _Dstbuf: [*c]u8, _Radix: c_int) [*c]u8;
pub extern fn onexit(_Func: _onexit_t) _onexit_t;
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub fn llabs(arg__j: c_longlong) callconv(.C) c_longlong {
    var _j = arg__j;
    return if (_j >= @bitCast(c_longlong, @as(c_longlong, @as(c_int, 0)))) _j else -_j;
}
pub extern fn strtoll([*c]const u8, [*c][*c]u8, c_int) c_longlong;
pub extern fn strtoull([*c]const u8, [*c][*c]u8, c_int) c_ulonglong;
pub fn atoll(arg__c: [*c]const u8) callconv(.C) c_longlong {
    var _c = arg__c;
    return _atoi64(_c);
}
pub fn wtoll(arg__w: [*c]const wchar_t) callconv(.C) c_longlong {
    var _w = arg__w;
    return _wtoi64(_w);
}
pub fn lltoa(arg__n: c_longlong, arg__c: [*c]u8, arg__i: c_int) callconv(.C) [*c]u8 {
    var _n = arg__n;
    var _c = arg__c;
    var _i = arg__i;
    return _i64toa(_n, _c, _i);
}
pub fn ulltoa(arg__n: c_ulonglong, arg__c: [*c]u8, arg__i: c_int) callconv(.C) [*c]u8 {
    var _n = arg__n;
    var _c = arg__c;
    var _i = arg__i;
    return _ui64toa(_n, _c, _i);
}
pub fn lltow(arg__n: c_longlong, arg__w: [*c]wchar_t, arg__i: c_int) callconv(.C) [*c]wchar_t {
    var _n = arg__n;
    var _w = arg__w;
    var _i = arg__i;
    return _i64tow(_n, _w, _i);
}
pub fn ulltow(arg__n: c_ulonglong, arg__w: [*c]wchar_t, arg__i: c_int) callconv(.C) [*c]wchar_t {
    var _n = arg__n;
    var _w = arg__w;
    var _i = arg__i;
    return _ui64tow(_n, _w, _i);
}
pub extern fn bsearch_s(_Key: ?*const anyopaque, _Base: ?*const anyopaque, _NumOfElements: rsize_t, _SizeOfElements: rsize_t, _PtFuncCompare: ?fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int, _Context: ?*anyopaque) ?*anyopaque;
pub extern fn _dupenv_s(_PBuffer: [*c][*c]u8, _PBufferSizeInBytes: [*c]usize, _VarName: [*c]const u8) errno_t;
pub extern fn getenv_s(_ReturnSize: [*c]usize, _DstBuf: [*c]u8, _DstSize: rsize_t, _VarName: [*c]const u8) errno_t;
pub extern fn _itoa_s(_Value: c_int, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;
pub extern fn _i64toa_s(_Val: c_longlong, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;
pub extern fn _ui64toa_s(_Val: c_ulonglong, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;
pub extern fn _ltoa_s(_Val: c_long, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;
pub extern fn mbstowcs_s(_PtNumOfCharConverted: [*c]usize, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _SrcBuf: [*c]const u8, _MaxCount: usize) errno_t;
pub extern fn _mbstowcs_s_l(_PtNumOfCharConverted: [*c]usize, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _SrcBuf: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) errno_t;
pub extern fn _ultoa_s(_Val: c_ulong, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;
pub extern fn wctomb_s(_SizeConverted: [*c]c_int, _MbCh: [*c]u8, _SizeInBytes: rsize_t, _WCh: wchar_t) errno_t;
pub extern fn _wctomb_s_l(_SizeConverted: [*c]c_int, _MbCh: [*c]u8, _SizeInBytes: usize, _WCh: wchar_t, _Locale: _locale_t) errno_t;
pub extern fn wcstombs_s(_PtNumOfCharConverted: [*c]usize, _Dst: [*c]u8, _DstSizeInBytes: usize, _Src: [*c]const wchar_t, _MaxCountInBytes: usize) errno_t;
pub extern fn _wcstombs_s_l(_PtNumOfCharConverted: [*c]usize, _Dst: [*c]u8, _DstSizeInBytes: usize, _Src: [*c]const wchar_t, _MaxCountInBytes: usize, _Locale: _locale_t) errno_t;
pub extern fn _ecvt_s(_DstBuf: [*c]u8, _Size: usize, _Val: f64, _NumOfDights: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) errno_t;
pub extern fn _fcvt_s(_DstBuf: [*c]u8, _Size: usize, _Val: f64, _NumOfDec: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) errno_t;
pub extern fn _gcvt_s(_DstBuf: [*c]u8, _Size: usize, _Val: f64, _NumOfDigits: c_int) errno_t;
pub extern fn _makepath_s(_PathResult: [*c]u8, _Size: usize, _Drive: [*c]const u8, _Dir: [*c]const u8, _Filename: [*c]const u8, _Ext: [*c]const u8) errno_t;
pub extern fn _putenv_s(_Name: [*c]const u8, _Value: [*c]const u8) errno_t;
pub extern fn _searchenv_s(_Filename: [*c]const u8, _EnvVar: [*c]const u8, _ResultPath: [*c]u8, _SizeInBytes: usize) errno_t;
pub extern fn _splitpath_s(_FullPath: [*c]const u8, _Drive: [*c]u8, _DriveSize: usize, _Dir: [*c]u8, _DirSize: usize, _Filename: [*c]u8, _FilenameSize: usize, _Ext: [*c]u8, _ExtSize: usize) errno_t;
pub extern fn qsort_s(_Base: ?*anyopaque, _NumOfElements: usize, _SizeOfElements: usize, _PtFuncCompare: ?fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int, _Context: ?*anyopaque) void;
pub const struct__heapinfo = extern struct {
    _pentry: [*c]c_int,
    _size: usize,
    _useflag: c_int,
};
pub const _HEAPINFO = struct__heapinfo;
pub extern var _amblksiz: c_uint;
pub extern fn __mingw_aligned_malloc(_Size: usize, _Alignment: usize) ?*anyopaque;
pub extern fn __mingw_aligned_free(_Memory: ?*anyopaque) void;
pub extern fn __mingw_aligned_offset_realloc(_Memory: ?*anyopaque, _Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;
pub extern fn __mingw_aligned_realloc(_Memory: ?*anyopaque, _Size: usize, _Offset: usize) ?*anyopaque;
pub inline fn _mm_malloc(arg___size: usize, arg___align: usize) ?*anyopaque {
    var __size = arg___size;
    var __align = arg___align;
    if (__align == @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 1)))) {
        return malloc(__size);
    }
    if (!((__align & (__align -% @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 1))))) != 0) and (__align < @sizeOf(?*anyopaque))) {
        __align = @sizeOf(?*anyopaque);
    }
    var __mallocedMemory: ?*anyopaque = undefined;
    __mallocedMemory = __mingw_aligned_malloc(__size, __align);
    return __mallocedMemory;
}
pub inline fn _mm_free(arg___p: ?*anyopaque) void {
    var __p = arg___p;
    __mingw_aligned_free(__p);
}
pub extern fn _resetstkoflw() c_int;
pub extern fn _set_malloc_crt_max_wait(_NewValue: c_ulong) c_ulong;
pub extern fn _expand(_Memory: ?*anyopaque, _NewSize: usize) ?*anyopaque;
pub extern fn _msize(_Memory: ?*anyopaque) usize;
pub extern fn _get_sbh_threshold() usize;
pub extern fn _set_sbh_threshold(_NewValue: usize) c_int;
pub extern fn _set_amblksiz(_Value: usize) errno_t;
pub extern fn _get_amblksiz(_Value: [*c]usize) errno_t;
pub extern fn _heapadd(_Memory: ?*anyopaque, _Size: usize) c_int;
pub extern fn _heapchk() c_int;
pub extern fn _heapmin() c_int;
pub extern fn _heapset(_Fill: c_uint) c_int;
pub extern fn _heapwalk(_EntryInfo: [*c]_HEAPINFO) c_int;
pub extern fn _heapused(_Used: [*c]usize, _Commit: [*c]usize) usize;
pub extern fn _get_heap_handle() isize;
pub fn _MarkAllocaS(arg__Ptr: ?*anyopaque, arg__Marker: c_uint) callconv(.C) ?*anyopaque {
    var _Ptr = arg__Ptr;
    var _Marker = arg__Marker;
    if (_Ptr != null) {
        @ptrCast([*c]c_uint, @alignCast(@import("std").meta.alignment(c_uint), _Ptr)).* = _Marker;
        _Ptr = @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), _Ptr)) + @bitCast(usize, @intCast(isize, @as(c_int, 16))));
    }
    return _Ptr;
}
pub fn _freea(arg__Memory: ?*anyopaque) callconv(.C) void {
    var _Memory = arg__Memory;
    var _Marker: c_uint = undefined;
    if (_Memory != null) {
        _Memory = @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), _Memory)) - @bitCast(usize, @intCast(isize, @as(c_int, 16))));
        _Marker = @ptrCast([*c]c_uint, @alignCast(@import("std").meta.alignment(c_uint), _Memory)).*;
        if (_Marker == @bitCast(c_uint, @as(c_int, 56797))) {
            free(_Memory);
        }
    }
}
pub const BGFX_FATAL_DEBUG_CHECK: c_int = 0;
pub const BGFX_FATAL_INVALID_SHADER: c_int = 1;
pub const BGFX_FATAL_UNABLE_TO_INITIALIZE: c_int = 2;
pub const BGFX_FATAL_UNABLE_TO_CREATE_TEXTURE: c_int = 3;
pub const BGFX_FATAL_DEVICE_LOST: c_int = 4;
pub const BGFX_FATAL_COUNT: c_int = 5;
pub const enum_bgfx_fatal = c_uint;
pub const bgfx_fatal_t = enum_bgfx_fatal;
pub const BGFX_RENDERER_TYPE_NOOP: c_int = 0;
pub const BGFX_RENDERER_TYPE_AGC: c_int = 1;
pub const BGFX_RENDERER_TYPE_DIRECT3D9: c_int = 2;
pub const BGFX_RENDERER_TYPE_DIRECT3D11: c_int = 3;
pub const BGFX_RENDERER_TYPE_DIRECT3D12: c_int = 4;
pub const BGFX_RENDERER_TYPE_GNM: c_int = 5;
pub const BGFX_RENDERER_TYPE_METAL: c_int = 6;
pub const BGFX_RENDERER_TYPE_NVN: c_int = 7;
pub const BGFX_RENDERER_TYPE_OPENGLES: c_int = 8;
pub const BGFX_RENDERER_TYPE_OPENGL: c_int = 9;
pub const BGFX_RENDERER_TYPE_VULKAN: c_int = 10;
pub const BGFX_RENDERER_TYPE_WEBGPU: c_int = 11;
pub const BGFX_RENDERER_TYPE_COUNT: c_int = 12;
pub const enum_bgfx_renderer_type = c_uint;
pub const bgfx_renderer_type_t = enum_bgfx_renderer_type;
pub const BGFX_ACCESS_READ: c_int = 0;
pub const BGFX_ACCESS_WRITE: c_int = 1;
pub const BGFX_ACCESS_READWRITE: c_int = 2;
pub const BGFX_ACCESS_COUNT: c_int = 3;
pub const enum_bgfx_access = c_uint;
pub const bgfx_access_t = enum_bgfx_access;
pub const BGFX_ATTRIB_POSITION: c_int = 0;
pub const BGFX_ATTRIB_NORMAL: c_int = 1;
pub const BGFX_ATTRIB_TANGENT: c_int = 2;
pub const BGFX_ATTRIB_BITANGENT: c_int = 3;
pub const BGFX_ATTRIB_COLOR0: c_int = 4;
pub const BGFX_ATTRIB_COLOR1: c_int = 5;
pub const BGFX_ATTRIB_COLOR2: c_int = 6;
pub const BGFX_ATTRIB_COLOR3: c_int = 7;
pub const BGFX_ATTRIB_INDICES: c_int = 8;
pub const BGFX_ATTRIB_WEIGHT: c_int = 9;
pub const BGFX_ATTRIB_TEXCOORD0: c_int = 10;
pub const BGFX_ATTRIB_TEXCOORD1: c_int = 11;
pub const BGFX_ATTRIB_TEXCOORD2: c_int = 12;
pub const BGFX_ATTRIB_TEXCOORD3: c_int = 13;
pub const BGFX_ATTRIB_TEXCOORD4: c_int = 14;
pub const BGFX_ATTRIB_TEXCOORD5: c_int = 15;
pub const BGFX_ATTRIB_TEXCOORD6: c_int = 16;
pub const BGFX_ATTRIB_TEXCOORD7: c_int = 17;
pub const BGFX_ATTRIB_COUNT: c_int = 18;
pub const enum_bgfx_attrib = c_uint;
pub const bgfx_attrib_t = enum_bgfx_attrib;
pub const BGFX_ATTRIB_TYPE_UINT8: c_int = 0;
pub const BGFX_ATTRIB_TYPE_UINT10: c_int = 1;
pub const BGFX_ATTRIB_TYPE_INT16: c_int = 2;
pub const BGFX_ATTRIB_TYPE_HALF: c_int = 3;
pub const BGFX_ATTRIB_TYPE_FLOAT: c_int = 4;
pub const BGFX_ATTRIB_TYPE_COUNT: c_int = 5;
pub const enum_bgfx_attrib_type = c_uint;
pub const bgfx_attrib_type_t = enum_bgfx_attrib_type;
pub const BGFX_TEXTURE_FORMAT_BC1: c_int = 0;
pub const BGFX_TEXTURE_FORMAT_BC2: c_int = 1;
pub const BGFX_TEXTURE_FORMAT_BC3: c_int = 2;
pub const BGFX_TEXTURE_FORMAT_BC4: c_int = 3;
pub const BGFX_TEXTURE_FORMAT_BC5: c_int = 4;
pub const BGFX_TEXTURE_FORMAT_BC6H: c_int = 5;
pub const BGFX_TEXTURE_FORMAT_BC7: c_int = 6;
pub const BGFX_TEXTURE_FORMAT_ETC1: c_int = 7;
pub const BGFX_TEXTURE_FORMAT_ETC2: c_int = 8;
pub const BGFX_TEXTURE_FORMAT_ETC2A: c_int = 9;
pub const BGFX_TEXTURE_FORMAT_ETC2A1: c_int = 10;
pub const BGFX_TEXTURE_FORMAT_PTC12: c_int = 11;
pub const BGFX_TEXTURE_FORMAT_PTC14: c_int = 12;
pub const BGFX_TEXTURE_FORMAT_PTC12A: c_int = 13;
pub const BGFX_TEXTURE_FORMAT_PTC14A: c_int = 14;
pub const BGFX_TEXTURE_FORMAT_PTC22: c_int = 15;
pub const BGFX_TEXTURE_FORMAT_PTC24: c_int = 16;
pub const BGFX_TEXTURE_FORMAT_ATC: c_int = 17;
pub const BGFX_TEXTURE_FORMAT_ATCE: c_int = 18;
pub const BGFX_TEXTURE_FORMAT_ATCI: c_int = 19;
pub const BGFX_TEXTURE_FORMAT_ASTC4X4: c_int = 20;
pub const BGFX_TEXTURE_FORMAT_ASTC5X5: c_int = 21;
pub const BGFX_TEXTURE_FORMAT_ASTC6X6: c_int = 22;
pub const BGFX_TEXTURE_FORMAT_ASTC8X5: c_int = 23;
pub const BGFX_TEXTURE_FORMAT_ASTC8X6: c_int = 24;
pub const BGFX_TEXTURE_FORMAT_ASTC10X5: c_int = 25;
pub const BGFX_TEXTURE_FORMAT_UNKNOWN: c_int = 26;
pub const BGFX_TEXTURE_FORMAT_R1: c_int = 27;
pub const BGFX_TEXTURE_FORMAT_A8: c_int = 28;
pub const BGFX_TEXTURE_FORMAT_R8: c_int = 29;
pub const BGFX_TEXTURE_FORMAT_R8I: c_int = 30;
pub const BGFX_TEXTURE_FORMAT_R8U: c_int = 31;
pub const BGFX_TEXTURE_FORMAT_R8S: c_int = 32;
pub const BGFX_TEXTURE_FORMAT_R16: c_int = 33;
pub const BGFX_TEXTURE_FORMAT_R16I: c_int = 34;
pub const BGFX_TEXTURE_FORMAT_R16U: c_int = 35;
pub const BGFX_TEXTURE_FORMAT_R16F: c_int = 36;
pub const BGFX_TEXTURE_FORMAT_R16S: c_int = 37;
pub const BGFX_TEXTURE_FORMAT_R32I: c_int = 38;
pub const BGFX_TEXTURE_FORMAT_R32U: c_int = 39;
pub const BGFX_TEXTURE_FORMAT_R32F: c_int = 40;
pub const BGFX_TEXTURE_FORMAT_RG8: c_int = 41;
pub const BGFX_TEXTURE_FORMAT_RG8I: c_int = 42;
pub const BGFX_TEXTURE_FORMAT_RG8U: c_int = 43;
pub const BGFX_TEXTURE_FORMAT_RG8S: c_int = 44;
pub const BGFX_TEXTURE_FORMAT_RG16: c_int = 45;
pub const BGFX_TEXTURE_FORMAT_RG16I: c_int = 46;
pub const BGFX_TEXTURE_FORMAT_RG16U: c_int = 47;
pub const BGFX_TEXTURE_FORMAT_RG16F: c_int = 48;
pub const BGFX_TEXTURE_FORMAT_RG16S: c_int = 49;
pub const BGFX_TEXTURE_FORMAT_RG32I: c_int = 50;
pub const BGFX_TEXTURE_FORMAT_RG32U: c_int = 51;
pub const BGFX_TEXTURE_FORMAT_RG32F: c_int = 52;
pub const BGFX_TEXTURE_FORMAT_RGB8: c_int = 53;
pub const BGFX_TEXTURE_FORMAT_RGB8I: c_int = 54;
pub const BGFX_TEXTURE_FORMAT_RGB8U: c_int = 55;
pub const BGFX_TEXTURE_FORMAT_RGB8S: c_int = 56;
pub const BGFX_TEXTURE_FORMAT_RGB9E5F: c_int = 57;
pub const BGFX_TEXTURE_FORMAT_BGRA8: c_int = 58;
pub const BGFX_TEXTURE_FORMAT_RGBA8: c_int = 59;
pub const BGFX_TEXTURE_FORMAT_RGBA8I: c_int = 60;
pub const BGFX_TEXTURE_FORMAT_RGBA8U: c_int = 61;
pub const BGFX_TEXTURE_FORMAT_RGBA8S: c_int = 62;
pub const BGFX_TEXTURE_FORMAT_RGBA16: c_int = 63;
pub const BGFX_TEXTURE_FORMAT_RGBA16I: c_int = 64;
pub const BGFX_TEXTURE_FORMAT_RGBA16U: c_int = 65;
pub const BGFX_TEXTURE_FORMAT_RGBA16F: c_int = 66;
pub const BGFX_TEXTURE_FORMAT_RGBA16S: c_int = 67;
pub const BGFX_TEXTURE_FORMAT_RGBA32I: c_int = 68;
pub const BGFX_TEXTURE_FORMAT_RGBA32U: c_int = 69;
pub const BGFX_TEXTURE_FORMAT_RGBA32F: c_int = 70;
pub const BGFX_TEXTURE_FORMAT_R5G6B5: c_int = 71;
pub const BGFX_TEXTURE_FORMAT_RGBA4: c_int = 72;
pub const BGFX_TEXTURE_FORMAT_RGB5A1: c_int = 73;
pub const BGFX_TEXTURE_FORMAT_RGB10A2: c_int = 74;
pub const BGFX_TEXTURE_FORMAT_RG11B10F: c_int = 75;
pub const BGFX_TEXTURE_FORMAT_UNKNOWNDEPTH: c_int = 76;
pub const BGFX_TEXTURE_FORMAT_D16: c_int = 77;
pub const BGFX_TEXTURE_FORMAT_D24: c_int = 78;
pub const BGFX_TEXTURE_FORMAT_D24S8: c_int = 79;
pub const BGFX_TEXTURE_FORMAT_D32: c_int = 80;
pub const BGFX_TEXTURE_FORMAT_D16F: c_int = 81;
pub const BGFX_TEXTURE_FORMAT_D24F: c_int = 82;
pub const BGFX_TEXTURE_FORMAT_D32F: c_int = 83;
pub const BGFX_TEXTURE_FORMAT_D0S8: c_int = 84;
pub const BGFX_TEXTURE_FORMAT_COUNT: c_int = 85;
pub const enum_bgfx_texture_format = c_uint;
pub const bgfx_texture_format_t = enum_bgfx_texture_format;
pub const BGFX_UNIFORM_TYPE_SAMPLER: c_int = 0;
pub const BGFX_UNIFORM_TYPE_END: c_int = 1;
pub const BGFX_UNIFORM_TYPE_VEC4: c_int = 2;
pub const BGFX_UNIFORM_TYPE_MAT3: c_int = 3;
pub const BGFX_UNIFORM_TYPE_MAT4: c_int = 4;
pub const BGFX_UNIFORM_TYPE_COUNT: c_int = 5;
pub const enum_bgfx_uniform_type = c_uint;
pub const bgfx_uniform_type_t = enum_bgfx_uniform_type;
pub const BGFX_BACKBUFFER_RATIO_EQUAL: c_int = 0;
pub const BGFX_BACKBUFFER_RATIO_HALF: c_int = 1;
pub const BGFX_BACKBUFFER_RATIO_QUARTER: c_int = 2;
pub const BGFX_BACKBUFFER_RATIO_EIGHTH: c_int = 3;
pub const BGFX_BACKBUFFER_RATIO_SIXTEENTH: c_int = 4;
pub const BGFX_BACKBUFFER_RATIO_DOUBLE: c_int = 5;
pub const BGFX_BACKBUFFER_RATIO_COUNT: c_int = 6;
pub const enum_bgfx_backbuffer_ratio = c_uint;
pub const bgfx_backbuffer_ratio_t = enum_bgfx_backbuffer_ratio;
pub const BGFX_OCCLUSION_QUERY_RESULT_INVISIBLE: c_int = 0;
pub const BGFX_OCCLUSION_QUERY_RESULT_VISIBLE: c_int = 1;
pub const BGFX_OCCLUSION_QUERY_RESULT_NORESULT: c_int = 2;
pub const BGFX_OCCLUSION_QUERY_RESULT_COUNT: c_int = 3;
pub const enum_bgfx_occlusion_query_result = c_uint;
pub const bgfx_occlusion_query_result_t = enum_bgfx_occlusion_query_result;
pub const BGFX_TOPOLOGY_TRI_LIST: c_int = 0;
pub const BGFX_TOPOLOGY_TRI_STRIP: c_int = 1;
pub const BGFX_TOPOLOGY_LINE_LIST: c_int = 2;
pub const BGFX_TOPOLOGY_LINE_STRIP: c_int = 3;
pub const BGFX_TOPOLOGY_POINT_LIST: c_int = 4;
pub const BGFX_TOPOLOGY_COUNT: c_int = 5;
pub const enum_bgfx_topology = c_uint;
pub const bgfx_topology_t = enum_bgfx_topology;
pub const BGFX_TOPOLOGY_CONVERT_TRI_LIST_FLIP_WINDING: c_int = 0;
pub const BGFX_TOPOLOGY_CONVERT_TRI_STRIP_FLIP_WINDING: c_int = 1;
pub const BGFX_TOPOLOGY_CONVERT_TRI_LIST_TO_LINE_LIST: c_int = 2;
pub const BGFX_TOPOLOGY_CONVERT_TRI_STRIP_TO_TRI_LIST: c_int = 3;
pub const BGFX_TOPOLOGY_CONVERT_LINE_STRIP_TO_LINE_LIST: c_int = 4;
pub const BGFX_TOPOLOGY_CONVERT_COUNT: c_int = 5;
pub const enum_bgfx_topology_convert = c_uint;
pub const bgfx_topology_convert_t = enum_bgfx_topology_convert;
pub const BGFX_TOPOLOGY_SORT_DIRECTION_FRONT_TO_BACK_MIN: c_int = 0;
pub const BGFX_TOPOLOGY_SORT_DIRECTION_FRONT_TO_BACK_AVG: c_int = 1;
pub const BGFX_TOPOLOGY_SORT_DIRECTION_FRONT_TO_BACK_MAX: c_int = 2;
pub const BGFX_TOPOLOGY_SORT_DIRECTION_BACK_TO_FRONT_MIN: c_int = 3;
pub const BGFX_TOPOLOGY_SORT_DIRECTION_BACK_TO_FRONT_AVG: c_int = 4;
pub const BGFX_TOPOLOGY_SORT_DIRECTION_BACK_TO_FRONT_MAX: c_int = 5;
pub const BGFX_TOPOLOGY_SORT_DISTANCE_FRONT_TO_BACK_MIN: c_int = 6;
pub const BGFX_TOPOLOGY_SORT_DISTANCE_FRONT_TO_BACK_AVG: c_int = 7;
pub const BGFX_TOPOLOGY_SORT_DISTANCE_FRONT_TO_BACK_MAX: c_int = 8;
pub const BGFX_TOPOLOGY_SORT_DISTANCE_BACK_TO_FRONT_MIN: c_int = 9;
pub const BGFX_TOPOLOGY_SORT_DISTANCE_BACK_TO_FRONT_AVG: c_int = 10;
pub const BGFX_TOPOLOGY_SORT_DISTANCE_BACK_TO_FRONT_MAX: c_int = 11;
pub const BGFX_TOPOLOGY_SORT_COUNT: c_int = 12;
pub const enum_bgfx_topology_sort = c_uint;
pub const bgfx_topology_sort_t = enum_bgfx_topology_sort;
pub const BGFX_VIEW_MODE_DEFAULT: c_int = 0;
pub const BGFX_VIEW_MODE_SEQUENTIAL: c_int = 1;
pub const BGFX_VIEW_MODE_DEPTH_ASCENDING: c_int = 2;
pub const BGFX_VIEW_MODE_DEPTH_DESCENDING: c_int = 3;
pub const BGFX_VIEW_MODE_COUNT: c_int = 4;
pub const enum_bgfx_view_mode = c_uint;
pub const bgfx_view_mode_t = enum_bgfx_view_mode;
pub const BGFX_RENDER_FRAME_NO_CONTEXT: c_int = 0;
pub const BGFX_RENDER_FRAME_RENDER: c_int = 1;
pub const BGFX_RENDER_FRAME_TIMEOUT: c_int = 2;
pub const BGFX_RENDER_FRAME_EXITING: c_int = 3;
pub const BGFX_RENDER_FRAME_COUNT: c_int = 4;
pub const enum_bgfx_render_frame = c_uint;
pub const bgfx_render_frame_t = enum_bgfx_render_frame;
pub const bgfx_view_id_t = u16;
pub const bgfx_allocator_interface_t = struct_bgfx_allocator_interface_s;
pub const struct_bgfx_allocator_vtbl_s = extern struct {
    realloc: ?fn ([*c]bgfx_allocator_interface_t, ?*anyopaque, usize, usize, [*c]const u8, u32) callconv(.C) ?*anyopaque,
};
pub const struct_bgfx_allocator_interface_s = extern struct {
    vtbl: [*c]const struct_bgfx_allocator_vtbl_s,
};
pub const bgfx_allocator_vtbl_t = struct_bgfx_allocator_vtbl_s;
pub const struct_bgfx_texture_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_texture_handle_t = struct_bgfx_texture_handle_s;
pub const struct_bgfx_attachment_s = extern struct {
    access: bgfx_access_t,
    handle: bgfx_texture_handle_t,
    mip: u16,
    layer: u16,
    numLayers: u16,
    resolve: u8,
};
pub const bgfx_attachment_t = struct_bgfx_attachment_s;
pub const struct_bgfx_vertex_layout_s = extern struct {
    hash: u32,
    stride: u16,
    offset: [18]u16,
    attributes: [18]u16,
};
pub const bgfx_vertex_layout_t = struct_bgfx_vertex_layout_s;
pub const struct_bgfx_platform_data_s = extern struct {
    ndt: ?*anyopaque,
    nwh: ?*anyopaque,
    context: ?*anyopaque,
    backBuffer: ?*anyopaque,
    backBufferDS: ?*anyopaque,
};
pub const bgfx_platform_data_t = struct_bgfx_platform_data_s;
pub const struct_bgfx_resolution_s = extern struct {
    format: bgfx_texture_format_t,
    width: u32,
    height: u32,
    reset: u32,
    numBackBuffers: u8,
    maxFrameLatency: u8,
};
pub const bgfx_resolution_t = struct_bgfx_resolution_s;
pub const struct_bgfx_init_limits_s = extern struct {
    maxEncoders: u16,
    minResourceCbSize: u32,
    transientVbSize: u32,
    transientIbSize: u32,
};
pub const bgfx_init_limits_t = struct_bgfx_init_limits_s;
pub const struct_bgfx_callback_vtbl_s = extern struct {
    fatal: ?fn ([*c]bgfx_callback_interface_t, [*c]const u8, u16, bgfx_fatal_t, [*c]const u8) callconv(.C) void,
    trace_vargs: ?fn ([*c]bgfx_callback_interface_t, [*c]const u8, u16, [*c]const u8, va_list) callconv(.C) void,
    profiler_begin: ?fn ([*c]bgfx_callback_interface_t, [*c]const u8, u32, [*c]const u8, u16) callconv(.C) void,
    profiler_begin_literal: ?fn ([*c]bgfx_callback_interface_t, [*c]const u8, u32, [*c]const u8, u16) callconv(.C) void,
    profiler_end: ?fn ([*c]bgfx_callback_interface_t) callconv(.C) void,
    cache_read_size: ?fn ([*c]bgfx_callback_interface_t, u64) callconv(.C) u32,
    cache_read: ?fn ([*c]bgfx_callback_interface_t, u64, ?*anyopaque, u32) callconv(.C) bool,
    cache_write: ?fn ([*c]bgfx_callback_interface_t, u64, ?*const anyopaque, u32) callconv(.C) void,
    screen_shot: ?fn ([*c]bgfx_callback_interface_t, [*c]const u8, u32, u32, u32, ?*const anyopaque, u32, bool) callconv(.C) void,
    capture_begin: ?fn ([*c]bgfx_callback_interface_t, u32, u32, u32, bgfx_texture_format_t, bool) callconv(.C) void,
    capture_end: ?fn ([*c]bgfx_callback_interface_t) callconv(.C) void,
    capture_frame: ?fn ([*c]bgfx_callback_interface_t, ?*const anyopaque, u32) callconv(.C) void,
};
pub const struct_bgfx_callback_interface_s = extern struct {
    vtbl: [*c]const struct_bgfx_callback_vtbl_s,
};
pub const bgfx_callback_interface_t = struct_bgfx_callback_interface_s;
pub const struct_bgfx_init_s = extern struct {
    type: bgfx_renderer_type_t,
    vendorId: u16,
    deviceId: u16,
    capabilities: u64,
    debug: bool,
    profile: bool,
    platformData: bgfx_platform_data_t,
    resolution: bgfx_resolution_t,
    limits: bgfx_init_limits_t,
    callback: [*c]bgfx_callback_interface_t,
    allocator: [*c]bgfx_allocator_interface_t,
};
pub const bgfx_init_t = struct_bgfx_init_s;
pub const struct_bgfx_caps_gpu_s = extern struct {
    vendorId: u16,
    deviceId: u16,
};
pub const bgfx_caps_gpu_t = struct_bgfx_caps_gpu_s;
pub const struct_bgfx_caps_limits_s = extern struct {
    maxDrawCalls: u32,
    maxBlits: u32,
    maxTextureSize: u32,
    maxTextureLayers: u32,
    maxViews: u32,
    maxFrameBuffers: u32,
    maxFBAttachments: u32,
    maxPrograms: u32,
    maxShaders: u32,
    maxTextures: u32,
    maxTextureSamplers: u32,
    maxComputeBindings: u32,
    maxVertexLayouts: u32,
    maxVertexStreams: u32,
    maxIndexBuffers: u32,
    maxVertexBuffers: u32,
    maxDynamicIndexBuffers: u32,
    maxDynamicVertexBuffers: u32,
    maxUniforms: u32,
    maxOcclusionQueries: u32,
    maxEncoders: u32,
    minResourceCbSize: u32,
    transientVbSize: u32,
    transientIbSize: u32,
};
pub const bgfx_caps_limits_t = struct_bgfx_caps_limits_s;
pub const struct_bgfx_caps_s = extern struct {
    rendererType: bgfx_renderer_type_t,
    supported: u64,
    vendorId: u16,
    deviceId: u16,
    homogeneousDepth: bool,
    originBottomLeft: bool,
    numGPUs: u8,
    gpu: [4]bgfx_caps_gpu_t,
    limits: bgfx_caps_limits_t,
    formats: [85]u16,
};
pub const bgfx_caps_t = struct_bgfx_caps_s;
pub const struct_bgfx_view_stats_s = extern struct {
    name: [256]u8,
    view: bgfx_view_id_t,
    cpuTimeBegin: i64,
    cpuTimeEnd: i64,
    gpuTimeBegin: i64,
    gpuTimeEnd: i64,
};
pub const bgfx_view_stats_t = struct_bgfx_view_stats_s;
pub const struct_bgfx_encoder_stats_s = extern struct {
    cpuTimeBegin: i64,
    cpuTimeEnd: i64,
};
pub const bgfx_encoder_stats_t = struct_bgfx_encoder_stats_s;
pub const struct_bgfx_stats_s = extern struct {
    cpuTimeFrame: i64,
    cpuTimeBegin: i64,
    cpuTimeEnd: i64,
    cpuTimerFreq: i64,
    gpuTimeBegin: i64,
    gpuTimeEnd: i64,
    gpuTimerFreq: i64,
    waitRender: i64,
    waitSubmit: i64,
    numDraw: u32,
    numCompute: u32,
    numBlit: u32,
    maxGpuLatency: u32,
    numDynamicIndexBuffers: u16,
    numDynamicVertexBuffers: u16,
    numFrameBuffers: u16,
    numIndexBuffers: u16,
    numOcclusionQueries: u16,
    numPrograms: u16,
    numShaders: u16,
    numTextures: u16,
    numUniforms: u16,
    numVertexBuffers: u16,
    numVertexLayouts: u16,
    textureMemoryUsed: i64,
    rtMemoryUsed: i64,
    transientVbUsed: i32,
    transientIbUsed: i32,
    numPrims: [5]u32,
    gpuMemoryMax: i64,
    gpuMemoryUsed: i64,
    width: u16,
    height: u16,
    textWidth: u16,
    textHeight: u16,
    numViews: u16,
    viewStats: [*c]bgfx_view_stats_t,
    numEncoders: u8,
    encoderStats: [*c]bgfx_encoder_stats_t,
};
pub const bgfx_stats_t = struct_bgfx_stats_s;
pub const struct_bgfx_memory_s = extern struct {
    data: [*c]u8,
    size: u32,
};
pub const bgfx_memory_t = struct_bgfx_memory_s;
pub const bgfx_release_fn_t = ?fn (?*anyopaque, ?*anyopaque) callconv(.C) void;
pub const struct_bgfx_index_buffer_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_index_buffer_handle_t = struct_bgfx_index_buffer_handle_s;
pub const struct_bgfx_vertex_layout_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_vertex_layout_handle_t = struct_bgfx_vertex_layout_handle_s;
pub const struct_bgfx_vertex_buffer_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_vertex_buffer_handle_t = struct_bgfx_vertex_buffer_handle_s;
pub const struct_bgfx_dynamic_index_buffer_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_dynamic_index_buffer_handle_t = struct_bgfx_dynamic_index_buffer_handle_s;
pub const struct_bgfx_dynamic_vertex_buffer_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_dynamic_vertex_buffer_handle_t = struct_bgfx_dynamic_vertex_buffer_handle_s;
pub const struct_bgfx_transient_index_buffer_s = extern struct {
    data: [*c]u8,
    size: u32,
    startIndex: u32,
    handle: bgfx_index_buffer_handle_t,
    isIndex16: bool,
};
pub const bgfx_transient_index_buffer_t = struct_bgfx_transient_index_buffer_s;
pub const struct_bgfx_transient_vertex_buffer_s = extern struct {
    data: [*c]u8,
    size: u32,
    startVertex: u32,
    stride: u16,
    handle: bgfx_vertex_buffer_handle_t,
    layoutHandle: bgfx_vertex_layout_handle_t,
};
pub const bgfx_transient_vertex_buffer_t = struct_bgfx_transient_vertex_buffer_s;
pub const struct_bgfx_instance_data_buffer_s = extern struct {
    data: [*c]u8,
    size: u32,
    offset: u32,
    num: u32,
    stride: u16,
    handle: bgfx_vertex_buffer_handle_t,
};
pub const bgfx_instance_data_buffer_t = struct_bgfx_instance_data_buffer_s;
pub const struct_bgfx_indirect_buffer_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_indirect_buffer_handle_t = struct_bgfx_indirect_buffer_handle_s;
pub const struct_bgfx_shader_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_shader_handle_t = struct_bgfx_shader_handle_s;
pub const struct_bgfx_uniform_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_uniform_handle_t = struct_bgfx_uniform_handle_s;
pub const struct_bgfx_program_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_program_handle_t = struct_bgfx_program_handle_s;
pub const struct_bgfx_texture_info_s = extern struct {
    format: bgfx_texture_format_t,
    storageSize: u32,
    width: u16,
    height: u16,
    depth: u16,
    numLayers: u16,
    numMips: u8,
    bitsPerPixel: u8,
    cubeMap: bool,
};
pub const bgfx_texture_info_t = struct_bgfx_texture_info_s;
pub const struct_bgfx_frame_buffer_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_frame_buffer_handle_t = struct_bgfx_frame_buffer_handle_s;
pub const struct_bgfx_uniform_info_s = extern struct {
    name: [256]u8,
    type: bgfx_uniform_type_t,
    num: u16,
};
pub const bgfx_uniform_info_t = struct_bgfx_uniform_info_s;
pub const struct_bgfx_occlusion_query_handle_s = extern struct {
    idx: u16,
};
pub const bgfx_occlusion_query_handle_t = struct_bgfx_occlusion_query_handle_s;
pub const struct_bgfx_encoder_s = opaque {};
pub const bgfx_encoder_t = struct_bgfx_encoder_s;
pub const struct_bgfx_transform_s = extern struct {
    data: [*c]f32,
    num: u16,
};
pub const bgfx_transform_t = struct_bgfx_transform_s;
pub const struct_bgfx_internal_data_s = extern struct {
    caps: [*c]const bgfx_caps_t,
    context: ?*anyopaque,
};
pub const bgfx_internal_data_t = struct_bgfx_internal_data_s;
pub const struct_bgfx_interface_vtbl = extern struct {
    attachment_init: ?fn ([*c]bgfx_attachment_t, bgfx_texture_handle_t, bgfx_access_t, u16, u16, u16, u8) callconv(.C) void,
    vertex_layout_begin: ?fn ([*c]bgfx_vertex_layout_t, bgfx_renderer_type_t) callconv(.C) [*c]bgfx_vertex_layout_t,
    vertex_layout_add: ?fn ([*c]bgfx_vertex_layout_t, bgfx_attrib_t, u8, bgfx_attrib_type_t, bool, bool) callconv(.C) [*c]bgfx_vertex_layout_t,
    vertex_layout_decode: ?fn ([*c]const bgfx_vertex_layout_t, bgfx_attrib_t, [*c]u8, [*c]bgfx_attrib_type_t, [*c]bool, [*c]bool) callconv(.C) void,
    vertex_layout_has: ?fn ([*c]const bgfx_vertex_layout_t, bgfx_attrib_t) callconv(.C) bool,
    vertex_layout_skip: ?fn ([*c]bgfx_vertex_layout_t, u8) callconv(.C) [*c]bgfx_vertex_layout_t,
    vertex_layout_end: ?fn ([*c]bgfx_vertex_layout_t) callconv(.C) void,
    vertex_pack: ?fn ([*c]const f32, bool, bgfx_attrib_t, [*c]const bgfx_vertex_layout_t, ?*anyopaque, u32) callconv(.C) void,
    vertex_unpack: ?fn ([*c]f32, bgfx_attrib_t, [*c]const bgfx_vertex_layout_t, ?*const anyopaque, u32) callconv(.C) void,
    vertex_convert: ?fn ([*c]const bgfx_vertex_layout_t, ?*anyopaque, [*c]const bgfx_vertex_layout_t, ?*const anyopaque, u32) callconv(.C) void,
    weld_vertices: ?fn (?*anyopaque, [*c]const bgfx_vertex_layout_t, ?*const anyopaque, u32, bool, f32) callconv(.C) u32,
    topology_convert: ?fn (bgfx_topology_convert_t, ?*anyopaque, u32, ?*const anyopaque, u32, bool) callconv(.C) u32,
    topology_sort_tri_list: ?fn (bgfx_topology_sort_t, ?*anyopaque, u32, [*c]const f32, [*c]const f32, ?*const anyopaque, u32, ?*const anyopaque, u32, bool) callconv(.C) void,
    get_supported_renderers: ?fn (u8, [*c]bgfx_renderer_type_t) callconv(.C) u8,
    get_renderer_name: ?fn (bgfx_renderer_type_t) callconv(.C) [*c]const u8,
    init_ctor: ?fn ([*c]bgfx_init_t) callconv(.C) void,
    init: ?fn ([*c]const bgfx_init_t) callconv(.C) bool,
    shutdown: ?fn () callconv(.C) void,
    reset: ?fn (u32, u32, u32, bgfx_texture_format_t) callconv(.C) void,
    frame: ?fn (bool) callconv(.C) u32,
    get_renderer_type: ?fn () callconv(.C) bgfx_renderer_type_t,
    get_caps: ?fn () callconv(.C) [*c]const bgfx_caps_t,
    get_stats: ?fn () callconv(.C) [*c]const bgfx_stats_t,
    alloc: ?fn (u32) callconv(.C) [*c]const bgfx_memory_t,
    copy: ?fn (?*const anyopaque, u32) callconv(.C) [*c]const bgfx_memory_t,
    make_ref: ?fn (?*const anyopaque, u32) callconv(.C) [*c]const bgfx_memory_t,
    make_ref_release: ?fn (?*const anyopaque, u32, bgfx_release_fn_t, ?*anyopaque) callconv(.C) [*c]const bgfx_memory_t,
    set_debug: ?fn (u32) callconv(.C) void,
    dbg_text_clear: ?fn (u8, bool) callconv(.C) void,
    dbg_text_printf: ?fn (u16, u16, u8, [*c]const u8, ...) callconv(.C) void,
    dbg_text_vprintf: ?fn (u16, u16, u8, [*c]const u8, va_list) callconv(.C) void,
    dbg_text_image: ?fn (u16, u16, u16, u16, ?*const anyopaque, u16) callconv(.C) void,
    create_index_buffer: ?fn ([*c]const bgfx_memory_t, u16) callconv(.C) bgfx_index_buffer_handle_t,
    set_index_buffer_name: ?fn (bgfx_index_buffer_handle_t, [*c]const u8, i32) callconv(.C) void,
    destroy_index_buffer: ?fn (bgfx_index_buffer_handle_t) callconv(.C) void,
    create_vertex_layout: ?fn ([*c]const bgfx_vertex_layout_t) callconv(.C) bgfx_vertex_layout_handle_t,
    destroy_vertex_layout: ?fn (bgfx_vertex_layout_handle_t) callconv(.C) void,
    create_vertex_buffer: ?fn ([*c]const bgfx_memory_t, [*c]const bgfx_vertex_layout_t, u16) callconv(.C) bgfx_vertex_buffer_handle_t,
    set_vertex_buffer_name: ?fn (bgfx_vertex_buffer_handle_t, [*c]const u8, i32) callconv(.C) void,
    destroy_vertex_buffer: ?fn (bgfx_vertex_buffer_handle_t) callconv(.C) void,
    create_dynamic_index_buffer: ?fn (u32, u16) callconv(.C) bgfx_dynamic_index_buffer_handle_t,
    create_dynamic_index_buffer_mem: ?fn ([*c]const bgfx_memory_t, u16) callconv(.C) bgfx_dynamic_index_buffer_handle_t,
    update_dynamic_index_buffer: ?fn (bgfx_dynamic_index_buffer_handle_t, u32, [*c]const bgfx_memory_t) callconv(.C) void,
    destroy_dynamic_index_buffer: ?fn (bgfx_dynamic_index_buffer_handle_t) callconv(.C) void,
    create_dynamic_vertex_buffer: ?fn (u32, [*c]const bgfx_vertex_layout_t, u16) callconv(.C) bgfx_dynamic_vertex_buffer_handle_t,
    create_dynamic_vertex_buffer_mem: ?fn ([*c]const bgfx_memory_t, [*c]const bgfx_vertex_layout_t, u16) callconv(.C) bgfx_dynamic_vertex_buffer_handle_t,
    update_dynamic_vertex_buffer: ?fn (bgfx_dynamic_vertex_buffer_handle_t, u32, [*c]const bgfx_memory_t) callconv(.C) void,
    destroy_dynamic_vertex_buffer: ?fn (bgfx_dynamic_vertex_buffer_handle_t) callconv(.C) void,
    get_avail_transient_index_buffer: ?fn (u32, bool) callconv(.C) u32,
    get_avail_transient_vertex_buffer: ?fn (u32, [*c]const bgfx_vertex_layout_t) callconv(.C) u32,
    get_avail_instance_data_buffer: ?fn (u32, u16) callconv(.C) u32,
    alloc_transient_index_buffer: ?fn ([*c]bgfx_transient_index_buffer_t, u32, bool) callconv(.C) void,
    alloc_transient_vertex_buffer: ?fn ([*c]bgfx_transient_vertex_buffer_t, u32, [*c]const bgfx_vertex_layout_t) callconv(.C) void,
    alloc_transient_buffers: ?fn ([*c]bgfx_transient_vertex_buffer_t, [*c]const bgfx_vertex_layout_t, u32, [*c]bgfx_transient_index_buffer_t, u32, bool) callconv(.C) bool,
    alloc_instance_data_buffer: ?fn ([*c]bgfx_instance_data_buffer_t, u32, u16) callconv(.C) void,
    create_indirect_buffer: ?fn (u32) callconv(.C) bgfx_indirect_buffer_handle_t,
    destroy_indirect_buffer: ?fn (bgfx_indirect_buffer_handle_t) callconv(.C) void,
    create_shader: ?fn ([*c]const bgfx_memory_t) callconv(.C) bgfx_shader_handle_t,
    get_shader_uniforms: ?fn (bgfx_shader_handle_t, [*c]bgfx_uniform_handle_t, u16) callconv(.C) u16,
    set_shader_name: ?fn (bgfx_shader_handle_t, [*c]const u8, i32) callconv(.C) void,
    destroy_shader: ?fn (bgfx_shader_handle_t) callconv(.C) void,
    create_program: ?fn (bgfx_shader_handle_t, bgfx_shader_handle_t, bool) callconv(.C) bgfx_program_handle_t,
    create_compute_program: ?fn (bgfx_shader_handle_t, bool) callconv(.C) bgfx_program_handle_t,
    destroy_program: ?fn (bgfx_program_handle_t) callconv(.C) void,
    is_texture_valid: ?fn (u16, bool, u16, bgfx_texture_format_t, u64) callconv(.C) bool,
    is_frame_buffer_valid: ?fn (u8, [*c]const bgfx_attachment_t) callconv(.C) bool,
    calc_texture_size: ?fn ([*c]bgfx_texture_info_t, u16, u16, u16, bool, bool, u16, bgfx_texture_format_t) callconv(.C) void,
    create_texture: ?fn ([*c]const bgfx_memory_t, u64, u8, [*c]bgfx_texture_info_t) callconv(.C) bgfx_texture_handle_t,
    create_texture_2d: ?fn (u16, u16, bool, u16, bgfx_texture_format_t, u64, [*c]const bgfx_memory_t) callconv(.C) bgfx_texture_handle_t,
    create_texture_2d_scaled: ?fn (bgfx_backbuffer_ratio_t, bool, u16, bgfx_texture_format_t, u64) callconv(.C) bgfx_texture_handle_t,
    create_texture_3d: ?fn (u16, u16, u16, bool, bgfx_texture_format_t, u64, [*c]const bgfx_memory_t) callconv(.C) bgfx_texture_handle_t,
    create_texture_cube: ?fn (u16, bool, u16, bgfx_texture_format_t, u64, [*c]const bgfx_memory_t) callconv(.C) bgfx_texture_handle_t,
    update_texture_2d: ?fn (bgfx_texture_handle_t, u16, u8, u16, u16, u16, u16, [*c]const bgfx_memory_t, u16) callconv(.C) void,
    update_texture_3d: ?fn (bgfx_texture_handle_t, u8, u16, u16, u16, u16, u16, u16, [*c]const bgfx_memory_t) callconv(.C) void,
    update_texture_cube: ?fn (bgfx_texture_handle_t, u16, u8, u8, u16, u16, u16, u16, [*c]const bgfx_memory_t, u16) callconv(.C) void,
    read_texture: ?fn (bgfx_texture_handle_t, ?*anyopaque, u8) callconv(.C) u32,
    set_texture_name: ?fn (bgfx_texture_handle_t, [*c]const u8, i32) callconv(.C) void,
    get_direct_access_ptr: ?fn (bgfx_texture_handle_t) callconv(.C) ?*anyopaque,
    destroy_texture: ?fn (bgfx_texture_handle_t) callconv(.C) void,
    create_frame_buffer: ?fn (u16, u16, bgfx_texture_format_t, u64) callconv(.C) bgfx_frame_buffer_handle_t,
    create_frame_buffer_scaled: ?fn (bgfx_backbuffer_ratio_t, bgfx_texture_format_t, u64) callconv(.C) bgfx_frame_buffer_handle_t,
    create_frame_buffer_from_handles: ?fn (u8, [*c]const bgfx_texture_handle_t, bool) callconv(.C) bgfx_frame_buffer_handle_t,
    create_frame_buffer_from_attachment: ?fn (u8, [*c]const bgfx_attachment_t, bool) callconv(.C) bgfx_frame_buffer_handle_t,
    create_frame_buffer_from_nwh: ?fn (?*anyopaque, u16, u16, bgfx_texture_format_t, bgfx_texture_format_t) callconv(.C) bgfx_frame_buffer_handle_t,
    set_frame_buffer_name: ?fn (bgfx_frame_buffer_handle_t, [*c]const u8, i32) callconv(.C) void,
    get_texture: ?fn (bgfx_frame_buffer_handle_t, u8) callconv(.C) bgfx_texture_handle_t,
    destroy_frame_buffer: ?fn (bgfx_frame_buffer_handle_t) callconv(.C) void,
    create_uniform: ?fn ([*c]const u8, bgfx_uniform_type_t, u16) callconv(.C) bgfx_uniform_handle_t,
    get_uniform_info: ?fn (bgfx_uniform_handle_t, [*c]bgfx_uniform_info_t) callconv(.C) void,
    destroy_uniform: ?fn (bgfx_uniform_handle_t) callconv(.C) void,
    create_occlusion_query: ?fn () callconv(.C) bgfx_occlusion_query_handle_t,
    get_result: ?fn (bgfx_occlusion_query_handle_t, [*c]i32) callconv(.C) bgfx_occlusion_query_result_t,
    destroy_occlusion_query: ?fn (bgfx_occlusion_query_handle_t) callconv(.C) void,
    set_palette_color: ?fn (u8, [*c]const f32) callconv(.C) void,
    set_palette_color_rgba8: ?fn (u8, u32) callconv(.C) void,
    set_view_name: ?fn (bgfx_view_id_t, [*c]const u8) callconv(.C) void,
    set_view_rect: ?fn (bgfx_view_id_t, u16, u16, u16, u16) callconv(.C) void,
    set_view_rect_ratio: ?fn (bgfx_view_id_t, u16, u16, bgfx_backbuffer_ratio_t) callconv(.C) void,
    set_view_scissor: ?fn (bgfx_view_id_t, u16, u16, u16, u16) callconv(.C) void,
    set_view_clear: ?fn (bgfx_view_id_t, u16, u32, f32, u8) callconv(.C) void,
    set_view_clear_mrt: ?fn (bgfx_view_id_t, u16, f32, u8, u8, u8, u8, u8, u8, u8, u8, u8) callconv(.C) void,
    set_view_mode: ?fn (bgfx_view_id_t, bgfx_view_mode_t) callconv(.C) void,
    set_view_frame_buffer: ?fn (bgfx_view_id_t, bgfx_frame_buffer_handle_t) callconv(.C) void,
    set_view_transform: ?fn (bgfx_view_id_t, ?*const anyopaque, ?*const anyopaque) callconv(.C) void,
    set_view_order: ?fn (bgfx_view_id_t, u16, [*c]const bgfx_view_id_t) callconv(.C) void,
    reset_view: ?fn (bgfx_view_id_t) callconv(.C) void,
    encoder_begin: ?fn (bool) callconv(.C) ?*bgfx_encoder_t,
    encoder_end: ?fn (?*bgfx_encoder_t) callconv(.C) void,
    encoder_set_marker: ?fn (?*bgfx_encoder_t, [*c]const u8) callconv(.C) void,
    encoder_set_state: ?fn (?*bgfx_encoder_t, u64, u32) callconv(.C) void,
    encoder_set_condition: ?fn (?*bgfx_encoder_t, bgfx_occlusion_query_handle_t, bool) callconv(.C) void,
    encoder_set_stencil: ?fn (?*bgfx_encoder_t, u32, u32) callconv(.C) void,
    encoder_set_scissor: ?fn (?*bgfx_encoder_t, u16, u16, u16, u16) callconv(.C) u16,
    encoder_set_scissor_cached: ?fn (?*bgfx_encoder_t, u16) callconv(.C) void,
    encoder_set_transform: ?fn (?*bgfx_encoder_t, ?*const anyopaque, u16) callconv(.C) u32,
    encoder_set_transform_cached: ?fn (?*bgfx_encoder_t, u32, u16) callconv(.C) void,
    encoder_alloc_transform: ?fn (?*bgfx_encoder_t, [*c]bgfx_transform_t, u16) callconv(.C) u32,
    encoder_set_uniform: ?fn (?*bgfx_encoder_t, bgfx_uniform_handle_t, ?*const anyopaque, u16) callconv(.C) void,
    encoder_set_index_buffer: ?fn (?*bgfx_encoder_t, bgfx_index_buffer_handle_t, u32, u32) callconv(.C) void,
    encoder_set_dynamic_index_buffer: ?fn (?*bgfx_encoder_t, bgfx_dynamic_index_buffer_handle_t, u32, u32) callconv(.C) void,
    encoder_set_transient_index_buffer: ?fn (?*bgfx_encoder_t, [*c]const bgfx_transient_index_buffer_t, u32, u32) callconv(.C) void,
    encoder_set_vertex_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    encoder_set_vertex_buffer_with_layout: ?fn (?*bgfx_encoder_t, u8, bgfx_vertex_buffer_handle_t, u32, u32, bgfx_vertex_layout_handle_t) callconv(.C) void,
    encoder_set_dynamic_vertex_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_dynamic_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    encoder_set_dynamic_vertex_buffer_with_layout: ?fn (?*bgfx_encoder_t, u8, bgfx_dynamic_vertex_buffer_handle_t, u32, u32, bgfx_vertex_layout_handle_t) callconv(.C) void,
    encoder_set_transient_vertex_buffer: ?fn (?*bgfx_encoder_t, u8, [*c]const bgfx_transient_vertex_buffer_t, u32, u32) callconv(.C) void,
    encoder_set_transient_vertex_buffer_with_layout: ?fn (?*bgfx_encoder_t, u8, [*c]const bgfx_transient_vertex_buffer_t, u32, u32, bgfx_vertex_layout_handle_t) callconv(.C) void,
    encoder_set_vertex_count: ?fn (?*bgfx_encoder_t, u32) callconv(.C) void,
    encoder_set_instance_data_buffer: ?fn (?*bgfx_encoder_t, [*c]const bgfx_instance_data_buffer_t, u32, u32) callconv(.C) void,
    encoder_set_instance_data_from_vertex_buffer: ?fn (?*bgfx_encoder_t, bgfx_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    encoder_set_instance_data_from_dynamic_vertex_buffer: ?fn (?*bgfx_encoder_t, bgfx_dynamic_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    encoder_set_instance_count: ?fn (?*bgfx_encoder_t, u32) callconv(.C) void,
    encoder_set_texture: ?fn (?*bgfx_encoder_t, u8, bgfx_uniform_handle_t, bgfx_texture_handle_t, u32) callconv(.C) void,
    encoder_touch: ?fn (?*bgfx_encoder_t, bgfx_view_id_t) callconv(.C) void,
    encoder_submit: ?fn (?*bgfx_encoder_t, bgfx_view_id_t, bgfx_program_handle_t, u32, u8) callconv(.C) void,
    encoder_submit_occlusion_query: ?fn (?*bgfx_encoder_t, bgfx_view_id_t, bgfx_program_handle_t, bgfx_occlusion_query_handle_t, u32, u8) callconv(.C) void,
    encoder_submit_indirect: ?fn (?*bgfx_encoder_t, bgfx_view_id_t, bgfx_program_handle_t, bgfx_indirect_buffer_handle_t, u16, u16, u32, u8) callconv(.C) void,
    encoder_set_compute_index_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_index_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    encoder_set_compute_vertex_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_vertex_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    encoder_set_compute_dynamic_index_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_dynamic_index_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    encoder_set_compute_dynamic_vertex_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_dynamic_vertex_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    encoder_set_compute_indirect_buffer: ?fn (?*bgfx_encoder_t, u8, bgfx_indirect_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    encoder_set_image: ?fn (?*bgfx_encoder_t, u8, bgfx_texture_handle_t, u8, bgfx_access_t, bgfx_texture_format_t) callconv(.C) void,
    encoder_dispatch: ?fn (?*bgfx_encoder_t, bgfx_view_id_t, bgfx_program_handle_t, u32, u32, u32, u8) callconv(.C) void,
    encoder_dispatch_indirect: ?fn (?*bgfx_encoder_t, bgfx_view_id_t, bgfx_program_handle_t, bgfx_indirect_buffer_handle_t, u16, u16, u8) callconv(.C) void,
    encoder_discard: ?fn (?*bgfx_encoder_t, u8) callconv(.C) void,
    encoder_blit: ?fn (?*bgfx_encoder_t, bgfx_view_id_t, bgfx_texture_handle_t, u8, u16, u16, u16, bgfx_texture_handle_t, u8, u16, u16, u16, u16, u16, u16) callconv(.C) void,
    request_screen_shot: ?fn (bgfx_frame_buffer_handle_t, [*c]const u8) callconv(.C) void,
    render_frame: ?fn (i32) callconv(.C) bgfx_render_frame_t,
    set_platform_data: ?fn ([*c]const bgfx_platform_data_t) callconv(.C) void,
    get_internal_data: ?fn () callconv(.C) [*c]const bgfx_internal_data_t,
    override_internal_texture_ptr: ?fn (bgfx_texture_handle_t, usize) callconv(.C) usize,
    override_internal_texture: ?fn (bgfx_texture_handle_t, u16, u16, u8, bgfx_texture_format_t, u64) callconv(.C) usize,
    set_marker: ?fn ([*c]const u8) callconv(.C) void,
    set_state: ?fn (u64, u32) callconv(.C) void,
    set_condition: ?fn (bgfx_occlusion_query_handle_t, bool) callconv(.C) void,
    set_stencil: ?fn (u32, u32) callconv(.C) void,
    set_scissor: ?fn (u16, u16, u16, u16) callconv(.C) u16,
    set_scissor_cached: ?fn (u16) callconv(.C) void,
    set_transform: ?fn (?*const anyopaque, u16) callconv(.C) u32,
    set_transform_cached: ?fn (u32, u16) callconv(.C) void,
    alloc_transform: ?fn ([*c]bgfx_transform_t, u16) callconv(.C) u32,
    set_uniform: ?fn (bgfx_uniform_handle_t, ?*const anyopaque, u16) callconv(.C) void,
    set_index_buffer: ?fn (bgfx_index_buffer_handle_t, u32, u32) callconv(.C) void,
    set_dynamic_index_buffer: ?fn (bgfx_dynamic_index_buffer_handle_t, u32, u32) callconv(.C) void,
    set_transient_index_buffer: ?fn ([*c]const bgfx_transient_index_buffer_t, u32, u32) callconv(.C) void,
    set_vertex_buffer: ?fn (u8, bgfx_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    set_vertex_buffer_with_layout: ?fn (u8, bgfx_vertex_buffer_handle_t, u32, u32, bgfx_vertex_layout_handle_t) callconv(.C) void,
    set_dynamic_vertex_buffer: ?fn (u8, bgfx_dynamic_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    set_dynamic_vertex_buffer_with_layout: ?fn (u8, bgfx_dynamic_vertex_buffer_handle_t, u32, u32, bgfx_vertex_layout_handle_t) callconv(.C) void,
    set_transient_vertex_buffer: ?fn (u8, [*c]const bgfx_transient_vertex_buffer_t, u32, u32) callconv(.C) void,
    set_transient_vertex_buffer_with_layout: ?fn (u8, [*c]const bgfx_transient_vertex_buffer_t, u32, u32, bgfx_vertex_layout_handle_t) callconv(.C) void,
    set_vertex_count: ?fn (u32) callconv(.C) void,
    set_instance_data_buffer: ?fn ([*c]const bgfx_instance_data_buffer_t, u32, u32) callconv(.C) void,
    set_instance_data_from_vertex_buffer: ?fn (bgfx_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    set_instance_data_from_dynamic_vertex_buffer: ?fn (bgfx_dynamic_vertex_buffer_handle_t, u32, u32) callconv(.C) void,
    set_instance_count: ?fn (u32) callconv(.C) void,
    set_texture: ?fn (u8, bgfx_uniform_handle_t, bgfx_texture_handle_t, u32) callconv(.C) void,
    touch: ?fn (bgfx_view_id_t) callconv(.C) void,
    submit: ?fn (bgfx_view_id_t, bgfx_program_handle_t, u32, u8) callconv(.C) void,
    submit_occlusion_query: ?fn (bgfx_view_id_t, bgfx_program_handle_t, bgfx_occlusion_query_handle_t, u32, u8) callconv(.C) void,
    submit_indirect: ?fn (bgfx_view_id_t, bgfx_program_handle_t, bgfx_indirect_buffer_handle_t, u16, u16, u32, u8) callconv(.C) void,
    set_compute_index_buffer: ?fn (u8, bgfx_index_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    set_compute_vertex_buffer: ?fn (u8, bgfx_vertex_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    set_compute_dynamic_index_buffer: ?fn (u8, bgfx_dynamic_index_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    set_compute_dynamic_vertex_buffer: ?fn (u8, bgfx_dynamic_vertex_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    set_compute_indirect_buffer: ?fn (u8, bgfx_indirect_buffer_handle_t, bgfx_access_t) callconv(.C) void,
    set_image: ?fn (u8, bgfx_texture_handle_t, u8, bgfx_access_t, bgfx_texture_format_t) callconv(.C) void,
    dispatch: ?fn (bgfx_view_id_t, bgfx_program_handle_t, u32, u32, u32, u8) callconv(.C) void,
    dispatch_indirect: ?fn (bgfx_view_id_t, bgfx_program_handle_t, bgfx_indirect_buffer_handle_t, u16, u16, u8) callconv(.C) void,
    discard: ?fn (u8) callconv(.C) void,
    blit: ?fn (bgfx_view_id_t, bgfx_texture_handle_t, u8, u16, u16, u16, bgfx_texture_handle_t, u8, u16, u16, u16, u16, u16, u16) callconv(.C) void,
};
pub const bgfx_interface_vtbl_t = struct_bgfx_interface_vtbl;
pub const bgfx_callback_vtbl_t = struct_bgfx_callback_vtbl_s;
pub extern fn bgfx_attachment_init(_this: [*c]bgfx_attachment_t, _handle: bgfx_texture_handle_t, _access: bgfx_access_t, _layer: u16, _numLayers: u16, _mip: u16, _resolve: u8) void;
pub extern fn bgfx_vertex_layout_begin(_this: [*c]bgfx_vertex_layout_t, _rendererType: bgfx_renderer_type_t) [*c]bgfx_vertex_layout_t;
pub extern fn bgfx_vertex_layout_add(_this: [*c]bgfx_vertex_layout_t, _attrib: bgfx_attrib_t, _num: u8, _type: bgfx_attrib_type_t, _normalized: bool, _asInt: bool) [*c]bgfx_vertex_layout_t;
pub extern fn bgfx_vertex_layout_decode(_this: [*c]const bgfx_vertex_layout_t, _attrib: bgfx_attrib_t, _num: [*c]u8, _type: [*c]bgfx_attrib_type_t, _normalized: [*c]bool, _asInt: [*c]bool) void;
pub extern fn bgfx_vertex_layout_has(_this: [*c]const bgfx_vertex_layout_t, _attrib: bgfx_attrib_t) bool;
pub extern fn bgfx_vertex_layout_skip(_this: [*c]bgfx_vertex_layout_t, _num: u8) [*c]bgfx_vertex_layout_t;
pub extern fn bgfx_vertex_layout_end(_this: [*c]bgfx_vertex_layout_t) void;
pub extern fn bgfx_vertex_pack(_input: [*c]const f32, _inputNormalized: bool, _attr: bgfx_attrib_t, _layout: [*c]const bgfx_vertex_layout_t, _data: ?*anyopaque, _index: u32) void;
pub extern fn bgfx_vertex_unpack(_output: [*c]f32, _attr: bgfx_attrib_t, _layout: [*c]const bgfx_vertex_layout_t, _data: ?*const anyopaque, _index: u32) void;
pub extern fn bgfx_vertex_convert(_dstLayout: [*c]const bgfx_vertex_layout_t, _dstData: ?*anyopaque, _srcLayout: [*c]const bgfx_vertex_layout_t, _srcData: ?*const anyopaque, _num: u32) void;
pub extern fn bgfx_weld_vertices(_output: ?*anyopaque, _layout: [*c]const bgfx_vertex_layout_t, _data: ?*const anyopaque, _num: u32, _index32: bool, _epsilon: f32) u32;
pub extern fn bgfx_topology_convert(_conversion: bgfx_topology_convert_t, _dst: ?*anyopaque, _dstSize: u32, _indices: ?*const anyopaque, _numIndices: u32, _index32: bool) u32;
pub extern fn bgfx_topology_sort_tri_list(_sort: bgfx_topology_sort_t, _dst: ?*anyopaque, _dstSize: u32, _dir: [*c]const f32, _pos: [*c]const f32, _vertices: ?*const anyopaque, _stride: u32, _indices: ?*const anyopaque, _numIndices: u32, _index32: bool) void;
pub extern fn bgfx_get_supported_renderers(_max: u8, _enum: [*c]bgfx_renderer_type_t) u8;
pub extern fn bgfx_get_renderer_name(_type: bgfx_renderer_type_t) [*c]const u8;
pub extern fn bgfx_init_ctor(_init: [*c]bgfx_init_t) void;
pub extern fn bgfx_init(_init: [*c]const bgfx_init_t) bool;
pub extern fn bgfx_shutdown() void;
pub extern fn bgfx_reset(_width: u32, _height: u32, _flags: u32, _format: bgfx_texture_format_t) void;
pub extern fn bgfx_frame(_capture: bool) u32;
pub extern fn bgfx_get_renderer_type() bgfx_renderer_type_t;
pub extern fn bgfx_get_caps() [*c]const bgfx_caps_t;
pub extern fn bgfx_get_stats() [*c]const bgfx_stats_t;
pub extern fn bgfx_alloc(_size: u32) [*c]const bgfx_memory_t;
pub extern fn bgfx_copy(_data: ?*const anyopaque, _size: u32) [*c]const bgfx_memory_t;
pub extern fn bgfx_make_ref(_data: ?*const anyopaque, _size: u32) [*c]const bgfx_memory_t;
pub extern fn bgfx_make_ref_release(_data: ?*const anyopaque, _size: u32, _releaseFn: bgfx_release_fn_t, _userData: ?*anyopaque) [*c]const bgfx_memory_t;
pub extern fn bgfx_set_debug(_debug: u32) void;
pub extern fn bgfx_dbg_text_clear(_attr: u8, _small: bool) void;
pub extern fn bgfx_dbg_text_printf(_x: u16, _y: u16, _attr: u8, _format: [*c]const u8, ...) void;
pub extern fn bgfx_dbg_text_vprintf(_x: u16, _y: u16, _attr: u8, _format: [*c]const u8, _argList: va_list) void;
pub extern fn bgfx_dbg_text_image(_x: u16, _y: u16, _width: u16, _height: u16, _data: ?*const anyopaque, _pitch: u16) void;
pub extern fn bgfx_create_index_buffer(_mem: [*c]const bgfx_memory_t, _flags: u16) bgfx_index_buffer_handle_t;
pub extern fn bgfx_set_index_buffer_name(_handle: bgfx_index_buffer_handle_t, _name: [*c]const u8, _len: i32) void;
pub extern fn bgfx_destroy_index_buffer(_handle: bgfx_index_buffer_handle_t) void;
pub extern fn bgfx_create_vertex_layout(_layout: [*c]const bgfx_vertex_layout_t) bgfx_vertex_layout_handle_t;
pub extern fn bgfx_destroy_vertex_layout(_layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_create_vertex_buffer(_mem: [*c]const bgfx_memory_t, _layout: [*c]const bgfx_vertex_layout_t, _flags: u16) bgfx_vertex_buffer_handle_t;
pub extern fn bgfx_set_vertex_buffer_name(_handle: bgfx_vertex_buffer_handle_t, _name: [*c]const u8, _len: i32) void;
pub extern fn bgfx_destroy_vertex_buffer(_handle: bgfx_vertex_buffer_handle_t) void;
pub extern fn bgfx_create_dynamic_index_buffer(_num: u32, _flags: u16) bgfx_dynamic_index_buffer_handle_t;
pub extern fn bgfx_create_dynamic_index_buffer_mem(_mem: [*c]const bgfx_memory_t, _flags: u16) bgfx_dynamic_index_buffer_handle_t;
pub extern fn bgfx_update_dynamic_index_buffer(_handle: bgfx_dynamic_index_buffer_handle_t, _startIndex: u32, _mem: [*c]const bgfx_memory_t) void;
pub extern fn bgfx_destroy_dynamic_index_buffer(_handle: bgfx_dynamic_index_buffer_handle_t) void;
pub extern fn bgfx_create_dynamic_vertex_buffer(_num: u32, _layout: [*c]const bgfx_vertex_layout_t, _flags: u16) bgfx_dynamic_vertex_buffer_handle_t;
pub extern fn bgfx_create_dynamic_vertex_buffer_mem(_mem: [*c]const bgfx_memory_t, _layout: [*c]const bgfx_vertex_layout_t, _flags: u16) bgfx_dynamic_vertex_buffer_handle_t;
pub extern fn bgfx_update_dynamic_vertex_buffer(_handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _mem: [*c]const bgfx_memory_t) void;
pub extern fn bgfx_destroy_dynamic_vertex_buffer(_handle: bgfx_dynamic_vertex_buffer_handle_t) void;
pub extern fn bgfx_get_avail_transient_index_buffer(_num: u32, _index32: bool) u32;
pub extern fn bgfx_get_avail_transient_vertex_buffer(_num: u32, _layout: [*c]const bgfx_vertex_layout_t) u32;
pub extern fn bgfx_get_avail_instance_data_buffer(_num: u32, _stride: u16) u32;
pub extern fn bgfx_alloc_transient_index_buffer(_tib: [*c]bgfx_transient_index_buffer_t, _num: u32, _index32: bool) void;
pub extern fn bgfx_alloc_transient_vertex_buffer(_tvb: [*c]bgfx_transient_vertex_buffer_t, _num: u32, _layout: [*c]const bgfx_vertex_layout_t) void;
pub extern fn bgfx_alloc_transient_buffers(_tvb: [*c]bgfx_transient_vertex_buffer_t, _layout: [*c]const bgfx_vertex_layout_t, _numVertices: u32, _tib: [*c]bgfx_transient_index_buffer_t, _numIndices: u32, _index32: bool) bool;
pub extern fn bgfx_alloc_instance_data_buffer(_idb: [*c]bgfx_instance_data_buffer_t, _num: u32, _stride: u16) void;
pub extern fn bgfx_create_indirect_buffer(_num: u32) bgfx_indirect_buffer_handle_t;
pub extern fn bgfx_destroy_indirect_buffer(_handle: bgfx_indirect_buffer_handle_t) void;
pub extern fn bgfx_create_shader(_mem: [*c]const bgfx_memory_t) bgfx_shader_handle_t;
pub extern fn bgfx_get_shader_uniforms(_handle: bgfx_shader_handle_t, _uniforms: [*c]bgfx_uniform_handle_t, _max: u16) u16;
pub extern fn bgfx_set_shader_name(_handle: bgfx_shader_handle_t, _name: [*c]const u8, _len: i32) void;
pub extern fn bgfx_destroy_shader(_handle: bgfx_shader_handle_t) void;
pub extern fn bgfx_create_program(_vsh: bgfx_shader_handle_t, _fsh: bgfx_shader_handle_t, _destroyShaders: bool) bgfx_program_handle_t;
pub extern fn bgfx_create_compute_program(_csh: bgfx_shader_handle_t, _destroyShaders: bool) bgfx_program_handle_t;
pub extern fn bgfx_destroy_program(_handle: bgfx_program_handle_t) void;
pub extern fn bgfx_is_texture_valid(_depth: u16, _cubeMap: bool, _numLayers: u16, _format: bgfx_texture_format_t, _flags: u64) bool;
pub extern fn bgfx_is_frame_buffer_valid(_num: u8, _attachment: [*c]const bgfx_attachment_t) bool;
pub extern fn bgfx_calc_texture_size(_info: [*c]bgfx_texture_info_t, _width: u16, _height: u16, _depth: u16, _cubeMap: bool, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format_t) void;
pub extern fn bgfx_create_texture(_mem: [*c]const bgfx_memory_t, _flags: u64, _skip: u8, _info: [*c]bgfx_texture_info_t) bgfx_texture_handle_t;
pub extern fn bgfx_create_texture_2d(_width: u16, _height: u16, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format_t, _flags: u64, _mem: [*c]const bgfx_memory_t) bgfx_texture_handle_t;
pub extern fn bgfx_create_texture_2d_scaled(_ratio: bgfx_backbuffer_ratio_t, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format_t, _flags: u64) bgfx_texture_handle_t;
pub extern fn bgfx_create_texture_3d(_width: u16, _height: u16, _depth: u16, _hasMips: bool, _format: bgfx_texture_format_t, _flags: u64, _mem: [*c]const bgfx_memory_t) bgfx_texture_handle_t;
pub extern fn bgfx_create_texture_cube(_size: u16, _hasMips: bool, _numLayers: u16, _format: bgfx_texture_format_t, _flags: u64, _mem: [*c]const bgfx_memory_t) bgfx_texture_handle_t;
pub extern fn bgfx_update_texture_2d(_handle: bgfx_texture_handle_t, _layer: u16, _mip: u8, _x: u16, _y: u16, _width: u16, _height: u16, _mem: [*c]const bgfx_memory_t, _pitch: u16) void;
pub extern fn bgfx_update_texture_3d(_handle: bgfx_texture_handle_t, _mip: u8, _x: u16, _y: u16, _z: u16, _width: u16, _height: u16, _depth: u16, _mem: [*c]const bgfx_memory_t) void;
pub extern fn bgfx_update_texture_cube(_handle: bgfx_texture_handle_t, _layer: u16, _side: u8, _mip: u8, _x: u16, _y: u16, _width: u16, _height: u16, _mem: [*c]const bgfx_memory_t, _pitch: u16) void;
pub extern fn bgfx_read_texture(_handle: bgfx_texture_handle_t, _data: ?*anyopaque, _mip: u8) u32;
pub extern fn bgfx_set_texture_name(_handle: bgfx_texture_handle_t, _name: [*c]const u8, _len: i32) void;
pub extern fn bgfx_get_direct_access_ptr(_handle: bgfx_texture_handle_t) ?*anyopaque;
pub extern fn bgfx_destroy_texture(_handle: bgfx_texture_handle_t) void;
pub extern fn bgfx_create_frame_buffer(_width: u16, _height: u16, _format: bgfx_texture_format_t, _textureFlags: u64) bgfx_frame_buffer_handle_t;
pub extern fn bgfx_create_frame_buffer_scaled(_ratio: bgfx_backbuffer_ratio_t, _format: bgfx_texture_format_t, _textureFlags: u64) bgfx_frame_buffer_handle_t;
pub extern fn bgfx_create_frame_buffer_from_handles(_num: u8, _handles: [*c]const bgfx_texture_handle_t, _destroyTexture: bool) bgfx_frame_buffer_handle_t;
pub extern fn bgfx_create_frame_buffer_from_attachment(_num: u8, _attachment: [*c]const bgfx_attachment_t, _destroyTexture: bool) bgfx_frame_buffer_handle_t;
pub extern fn bgfx_create_frame_buffer_from_nwh(_nwh: ?*anyopaque, _width: u16, _height: u16, _format: bgfx_texture_format_t, _depthFormat: bgfx_texture_format_t) bgfx_frame_buffer_handle_t;
pub extern fn bgfx_set_frame_buffer_name(_handle: bgfx_frame_buffer_handle_t, _name: [*c]const u8, _len: i32) void;
pub extern fn bgfx_get_texture(_handle: bgfx_frame_buffer_handle_t, _attachment: u8) bgfx_texture_handle_t;
pub extern fn bgfx_destroy_frame_buffer(_handle: bgfx_frame_buffer_handle_t) void;
pub extern fn bgfx_create_uniform(_name: [*c]const u8, _type: bgfx_uniform_type_t, _num: u16) bgfx_uniform_handle_t;
pub extern fn bgfx_get_uniform_info(_handle: bgfx_uniform_handle_t, _info: [*c]bgfx_uniform_info_t) void;
pub extern fn bgfx_destroy_uniform(_handle: bgfx_uniform_handle_t) void;
pub extern fn bgfx_create_occlusion_query() bgfx_occlusion_query_handle_t;
pub extern fn bgfx_get_result(_handle: bgfx_occlusion_query_handle_t, _result: [*c]i32) bgfx_occlusion_query_result_t;
pub extern fn bgfx_destroy_occlusion_query(_handle: bgfx_occlusion_query_handle_t) void;
pub extern fn bgfx_set_palette_color(_index: u8, _rgba: [*c]const f32) void;
pub extern fn bgfx_set_palette_color_rgba8(_index: u8, _rgba: u32) void;
pub extern fn bgfx_set_view_name(_id: bgfx_view_id_t, _name: [*c]const u8) void;
pub extern fn bgfx_set_view_rect(_id: bgfx_view_id_t, _x: u16, _y: u16, _width: u16, _height: u16) void;
pub extern fn bgfx_set_view_rect_ratio(_id: bgfx_view_id_t, _x: u16, _y: u16, _ratio: bgfx_backbuffer_ratio_t) void;
pub extern fn bgfx_set_view_scissor(_id: bgfx_view_id_t, _x: u16, _y: u16, _width: u16, _height: u16) void;
pub extern fn bgfx_set_view_clear(_id: bgfx_view_id_t, _flags: u16, _rgba: u32, _depth: f32, _stencil: u8) void;
pub extern fn bgfx_set_view_clear_mrt(_id: bgfx_view_id_t, _flags: u16, _depth: f32, _stencil: u8, _c0: u8, _c1: u8, _c2: u8, _c3: u8, _c4: u8, _c5: u8, _c6: u8, _c7: u8) void;
pub extern fn bgfx_set_view_mode(_id: bgfx_view_id_t, _mode: bgfx_view_mode_t) void;
pub extern fn bgfx_set_view_frame_buffer(_id: bgfx_view_id_t, _handle: bgfx_frame_buffer_handle_t) void;
pub extern fn bgfx_set_view_transform(_id: bgfx_view_id_t, _view: ?*const anyopaque, _proj: ?*const anyopaque) void;
pub extern fn bgfx_set_view_order(_id: bgfx_view_id_t, _num: u16, _order: [*c]const bgfx_view_id_t) void;
pub extern fn bgfx_reset_view(_id: bgfx_view_id_t) void;
pub extern fn bgfx_encoder_begin(_forThread: bool) ?*bgfx_encoder_t;
pub extern fn bgfx_encoder_end(_encoder: ?*bgfx_encoder_t) void;
pub extern fn bgfx_encoder_set_marker(_this: ?*bgfx_encoder_t, _marker: [*c]const u8) void;
pub extern fn bgfx_encoder_set_state(_this: ?*bgfx_encoder_t, _state: u64, _rgba: u32) void;
pub extern fn bgfx_encoder_set_condition(_this: ?*bgfx_encoder_t, _handle: bgfx_occlusion_query_handle_t, _visible: bool) void;
pub extern fn bgfx_encoder_set_stencil(_this: ?*bgfx_encoder_t, _fstencil: u32, _bstencil: u32) void;
pub extern fn bgfx_encoder_set_scissor(_this: ?*bgfx_encoder_t, _x: u16, _y: u16, _width: u16, _height: u16) u16;
pub extern fn bgfx_encoder_set_scissor_cached(_this: ?*bgfx_encoder_t, _cache: u16) void;
pub extern fn bgfx_encoder_set_transform(_this: ?*bgfx_encoder_t, _mtx: ?*const anyopaque, _num: u16) u32;
pub extern fn bgfx_encoder_set_transform_cached(_this: ?*bgfx_encoder_t, _cache: u32, _num: u16) void;
pub extern fn bgfx_encoder_alloc_transform(_this: ?*bgfx_encoder_t, _transform: [*c]bgfx_transform_t, _num: u16) u32;
pub extern fn bgfx_encoder_set_uniform(_this: ?*bgfx_encoder_t, _handle: bgfx_uniform_handle_t, _value: ?*const anyopaque, _num: u16) void;
pub extern fn bgfx_encoder_set_index_buffer(_this: ?*bgfx_encoder_t, _handle: bgfx_index_buffer_handle_t, _firstIndex: u32, _numIndices: u32) void;
pub extern fn bgfx_encoder_set_dynamic_index_buffer(_this: ?*bgfx_encoder_t, _handle: bgfx_dynamic_index_buffer_handle_t, _firstIndex: u32, _numIndices: u32) void;
pub extern fn bgfx_encoder_set_transient_index_buffer(_this: ?*bgfx_encoder_t, _tib: [*c]const bgfx_transient_index_buffer_t, _firstIndex: u32, _numIndices: u32) void;
pub extern fn bgfx_encoder_set_vertex_buffer(_this: ?*bgfx_encoder_t, _stream: u8, _handle: bgfx_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32) void;
pub extern fn bgfx_encoder_set_vertex_buffer_with_layout(_this: ?*bgfx_encoder_t, _stream: u8, _handle: bgfx_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_encoder_set_dynamic_vertex_buffer(_this: ?*bgfx_encoder_t, _stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32) void;
pub extern fn bgfx_encoder_set_dynamic_vertex_buffer_with_layout(_this: ?*bgfx_encoder_t, _stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_encoder_set_transient_vertex_buffer(_this: ?*bgfx_encoder_t, _stream: u8, _tvb: [*c]const bgfx_transient_vertex_buffer_t, _startVertex: u32, _numVertices: u32) void;
pub extern fn bgfx_encoder_set_transient_vertex_buffer_with_layout(_this: ?*bgfx_encoder_t, _stream: u8, _tvb: [*c]const bgfx_transient_vertex_buffer_t, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_encoder_set_vertex_count(_this: ?*bgfx_encoder_t, _numVertices: u32) void;
pub extern fn bgfx_encoder_set_instance_data_buffer(_this: ?*bgfx_encoder_t, _idb: [*c]const bgfx_instance_data_buffer_t, _start: u32, _num: u32) void;
pub extern fn bgfx_encoder_set_instance_data_from_vertex_buffer(_this: ?*bgfx_encoder_t, _handle: bgfx_vertex_buffer_handle_t, _startVertex: u32, _num: u32) void;
pub extern fn bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer(_this: ?*bgfx_encoder_t, _handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _num: u32) void;
pub extern fn bgfx_encoder_set_instance_count(_this: ?*bgfx_encoder_t, _numInstances: u32) void;
pub extern fn bgfx_encoder_set_texture(_this: ?*bgfx_encoder_t, _stage: u8, _sampler: bgfx_uniform_handle_t, _handle: bgfx_texture_handle_t, _flags: u32) void;
pub extern fn bgfx_encoder_touch(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t) void;
pub extern fn bgfx_encoder_submit(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t, _program: bgfx_program_handle_t, _depth: u32, _flags: u8) void;
pub extern fn bgfx_encoder_submit_occlusion_query(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t, _program: bgfx_program_handle_t, _occlusionQuery: bgfx_occlusion_query_handle_t, _depth: u32, _flags: u8) void;
pub extern fn bgfx_encoder_submit_indirect(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t, _program: bgfx_program_handle_t, _indirectHandle: bgfx_indirect_buffer_handle_t, _start: u16, _num: u16, _depth: u32, _flags: u8) void;
pub extern fn bgfx_encoder_set_compute_index_buffer(_this: ?*bgfx_encoder_t, _stage: u8, _handle: bgfx_index_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_encoder_set_compute_vertex_buffer(_this: ?*bgfx_encoder_t, _stage: u8, _handle: bgfx_vertex_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_encoder_set_compute_dynamic_index_buffer(_this: ?*bgfx_encoder_t, _stage: u8, _handle: bgfx_dynamic_index_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_encoder_set_compute_dynamic_vertex_buffer(_this: ?*bgfx_encoder_t, _stage: u8, _handle: bgfx_dynamic_vertex_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_encoder_set_compute_indirect_buffer(_this: ?*bgfx_encoder_t, _stage: u8, _handle: bgfx_indirect_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_encoder_set_image(_this: ?*bgfx_encoder_t, _stage: u8, _handle: bgfx_texture_handle_t, _mip: u8, _access: bgfx_access_t, _format: bgfx_texture_format_t) void;
pub extern fn bgfx_encoder_dispatch(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t, _program: bgfx_program_handle_t, _numX: u32, _numY: u32, _numZ: u32, _flags: u8) void;
pub extern fn bgfx_encoder_dispatch_indirect(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t, _program: bgfx_program_handle_t, _indirectHandle: bgfx_indirect_buffer_handle_t, _start: u16, _num: u16, _flags: u8) void;
pub extern fn bgfx_encoder_discard(_this: ?*bgfx_encoder_t, _flags: u8) void;
pub extern fn bgfx_encoder_blit(_this: ?*bgfx_encoder_t, _id: bgfx_view_id_t, _dst: bgfx_texture_handle_t, _dstMip: u8, _dstX: u16, _dstY: u16, _dstZ: u16, _src: bgfx_texture_handle_t, _srcMip: u8, _srcX: u16, _srcY: u16, _srcZ: u16, _width: u16, _height: u16, _depth: u16) void;
pub extern fn bgfx_request_screen_shot(_handle: bgfx_frame_buffer_handle_t, _filePath: [*c]const u8) void;
pub extern fn bgfx_render_frame(_msecs: i32) bgfx_render_frame_t;
pub extern fn bgfx_set_platform_data(_data: [*c]const bgfx_platform_data_t) void;
pub extern fn bgfx_get_internal_data() [*c]const bgfx_internal_data_t;
pub extern fn bgfx_override_internal_texture_ptr(_handle: bgfx_texture_handle_t, _ptr: usize) usize;
pub extern fn bgfx_override_internal_texture(_handle: bgfx_texture_handle_t, _width: u16, _height: u16, _numMips: u8, _format: bgfx_texture_format_t, _flags: u64) usize;
pub extern fn bgfx_set_marker(_marker: [*c]const u8) void;
pub extern fn bgfx_set_state(_state: u64, _rgba: u32) void;
pub extern fn bgfx_set_condition(_handle: bgfx_occlusion_query_handle_t, _visible: bool) void;
pub extern fn bgfx_set_stencil(_fstencil: u32, _bstencil: u32) void;
pub extern fn bgfx_set_scissor(_x: u16, _y: u16, _width: u16, _height: u16) u16;
pub extern fn bgfx_set_scissor_cached(_cache: u16) void;
pub extern fn bgfx_set_transform(_mtx: ?*const anyopaque, _num: u16) u32;
pub extern fn bgfx_set_transform_cached(_cache: u32, _num: u16) void;
pub extern fn bgfx_alloc_transform(_transform: [*c]bgfx_transform_t, _num: u16) u32;
pub extern fn bgfx_set_uniform(_handle: bgfx_uniform_handle_t, _value: ?*const anyopaque, _num: u16) void;
pub extern fn bgfx_set_index_buffer(_handle: bgfx_index_buffer_handle_t, _firstIndex: u32, _numIndices: u32) void;
pub extern fn bgfx_set_dynamic_index_buffer(_handle: bgfx_dynamic_index_buffer_handle_t, _firstIndex: u32, _numIndices: u32) void;
pub extern fn bgfx_set_transient_index_buffer(_tib: [*c]const bgfx_transient_index_buffer_t, _firstIndex: u32, _numIndices: u32) void;
pub extern fn bgfx_set_vertex_buffer(_stream: u8, _handle: bgfx_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32) void;
pub extern fn bgfx_set_vertex_buffer_with_layout(_stream: u8, _handle: bgfx_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_set_dynamic_vertex_buffer(_stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32) void;
pub extern fn bgfx_set_dynamic_vertex_buffer_with_layout(_stream: u8, _handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_set_transient_vertex_buffer(_stream: u8, _tvb: [*c]const bgfx_transient_vertex_buffer_t, _startVertex: u32, _numVertices: u32) void;
pub extern fn bgfx_set_transient_vertex_buffer_with_layout(_stream: u8, _tvb: [*c]const bgfx_transient_vertex_buffer_t, _startVertex: u32, _numVertices: u32, _layoutHandle: bgfx_vertex_layout_handle_t) void;
pub extern fn bgfx_set_vertex_count(_numVertices: u32) void;
pub extern fn bgfx_set_instance_data_buffer(_idb: [*c]const bgfx_instance_data_buffer_t, _start: u32, _num: u32) void;
pub extern fn bgfx_set_instance_data_from_vertex_buffer(_handle: bgfx_vertex_buffer_handle_t, _startVertex: u32, _num: u32) void;
pub extern fn bgfx_set_instance_data_from_dynamic_vertex_buffer(_handle: bgfx_dynamic_vertex_buffer_handle_t, _startVertex: u32, _num: u32) void;
pub extern fn bgfx_set_instance_count(_numInstances: u32) void;
pub extern fn bgfx_set_texture(_stage: u8, _sampler: bgfx_uniform_handle_t, _handle: bgfx_texture_handle_t, _flags: u32) void;
pub extern fn bgfx_touch(_id: bgfx_view_id_t) void;
pub extern fn bgfx_submit(_id: bgfx_view_id_t, _program: bgfx_program_handle_t, _depth: u32, _flags: u8) void;
pub extern fn bgfx_submit_occlusion_query(_id: bgfx_view_id_t, _program: bgfx_program_handle_t, _occlusionQuery: bgfx_occlusion_query_handle_t, _depth: u32, _flags: u8) void;
pub extern fn bgfx_submit_indirect(_id: bgfx_view_id_t, _program: bgfx_program_handle_t, _indirectHandle: bgfx_indirect_buffer_handle_t, _start: u16, _num: u16, _depth: u32, _flags: u8) void;
pub extern fn bgfx_set_compute_index_buffer(_stage: u8, _handle: bgfx_index_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_set_compute_vertex_buffer(_stage: u8, _handle: bgfx_vertex_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_set_compute_dynamic_index_buffer(_stage: u8, _handle: bgfx_dynamic_index_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_set_compute_dynamic_vertex_buffer(_stage: u8, _handle: bgfx_dynamic_vertex_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_set_compute_indirect_buffer(_stage: u8, _handle: bgfx_indirect_buffer_handle_t, _access: bgfx_access_t) void;
pub extern fn bgfx_set_image(_stage: u8, _handle: bgfx_texture_handle_t, _mip: u8, _access: bgfx_access_t, _format: bgfx_texture_format_t) void;
pub extern fn bgfx_dispatch(_id: bgfx_view_id_t, _program: bgfx_program_handle_t, _numX: u32, _numY: u32, _numZ: u32, _flags: u8) void;
pub extern fn bgfx_dispatch_indirect(_id: bgfx_view_id_t, _program: bgfx_program_handle_t, _indirectHandle: bgfx_indirect_buffer_handle_t, _start: u16, _num: u16, _flags: u8) void;
pub extern fn bgfx_discard(_flags: u8) void;
pub extern fn bgfx_blit(_id: bgfx_view_id_t, _dst: bgfx_texture_handle_t, _dstMip: u8, _dstX: u16, _dstY: u16, _dstZ: u16, _src: bgfx_texture_handle_t, _srcMip: u8, _srcX: u16, _srcY: u16, _srcZ: u16, _width: u16, _height: u16, _depth: u16) void;
pub const BGFX_FUNCTION_ID_ATTACHMENT_INIT: c_int = 0;
pub const BGFX_FUNCTION_ID_VERTEX_LAYOUT_BEGIN: c_int = 1;
pub const BGFX_FUNCTION_ID_VERTEX_LAYOUT_ADD: c_int = 2;
pub const BGFX_FUNCTION_ID_VERTEX_LAYOUT_DECODE: c_int = 3;
pub const BGFX_FUNCTION_ID_VERTEX_LAYOUT_HAS: c_int = 4;
pub const BGFX_FUNCTION_ID_VERTEX_LAYOUT_SKIP: c_int = 5;
pub const BGFX_FUNCTION_ID_VERTEX_LAYOUT_END: c_int = 6;
pub const BGFX_FUNCTION_ID_VERTEX_PACK: c_int = 7;
pub const BGFX_FUNCTION_ID_VERTEX_UNPACK: c_int = 8;
pub const BGFX_FUNCTION_ID_VERTEX_CONVERT: c_int = 9;
pub const BGFX_FUNCTION_ID_WELD_VERTICES: c_int = 10;
pub const BGFX_FUNCTION_ID_TOPOLOGY_CONVERT: c_int = 11;
pub const BGFX_FUNCTION_ID_TOPOLOGY_SORT_TRI_LIST: c_int = 12;
pub const BGFX_FUNCTION_ID_GET_SUPPORTED_RENDERERS: c_int = 13;
pub const BGFX_FUNCTION_ID_GET_RENDERER_NAME: c_int = 14;
pub const BGFX_FUNCTION_ID_INIT_CTOR: c_int = 15;
pub const BGFX_FUNCTION_ID_INIT: c_int = 16;
pub const BGFX_FUNCTION_ID_SHUTDOWN: c_int = 17;
pub const BGFX_FUNCTION_ID_RESET: c_int = 18;
pub const BGFX_FUNCTION_ID_FRAME: c_int = 19;
pub const BGFX_FUNCTION_ID_GET_RENDERER_TYPE: c_int = 20;
pub const BGFX_FUNCTION_ID_GET_CAPS: c_int = 21;
pub const BGFX_FUNCTION_ID_GET_STATS: c_int = 22;
pub const BGFX_FUNCTION_ID_ALLOC: c_int = 23;
pub const BGFX_FUNCTION_ID_COPY: c_int = 24;
pub const BGFX_FUNCTION_ID_MAKE_REF: c_int = 25;
pub const BGFX_FUNCTION_ID_MAKE_REF_RELEASE: c_int = 26;
pub const BGFX_FUNCTION_ID_SET_DEBUG: c_int = 27;
pub const BGFX_FUNCTION_ID_DBG_TEXT_CLEAR: c_int = 28;
pub const BGFX_FUNCTION_ID_DBG_TEXT_PRINTF: c_int = 29;
pub const BGFX_FUNCTION_ID_DBG_TEXT_VPRINTF: c_int = 30;
pub const BGFX_FUNCTION_ID_DBG_TEXT_IMAGE: c_int = 31;
pub const BGFX_FUNCTION_ID_CREATE_INDEX_BUFFER: c_int = 32;
pub const BGFX_FUNCTION_ID_SET_INDEX_BUFFER_NAME: c_int = 33;
pub const BGFX_FUNCTION_ID_DESTROY_INDEX_BUFFER: c_int = 34;
pub const BGFX_FUNCTION_ID_CREATE_VERTEX_LAYOUT: c_int = 35;
pub const BGFX_FUNCTION_ID_DESTROY_VERTEX_LAYOUT: c_int = 36;
pub const BGFX_FUNCTION_ID_CREATE_VERTEX_BUFFER: c_int = 37;
pub const BGFX_FUNCTION_ID_SET_VERTEX_BUFFER_NAME: c_int = 38;
pub const BGFX_FUNCTION_ID_DESTROY_VERTEX_BUFFER: c_int = 39;
pub const BGFX_FUNCTION_ID_CREATE_DYNAMIC_INDEX_BUFFER: c_int = 40;
pub const BGFX_FUNCTION_ID_CREATE_DYNAMIC_INDEX_BUFFER_MEM: c_int = 41;
pub const BGFX_FUNCTION_ID_UPDATE_DYNAMIC_INDEX_BUFFER: c_int = 42;
pub const BGFX_FUNCTION_ID_DESTROY_DYNAMIC_INDEX_BUFFER: c_int = 43;
pub const BGFX_FUNCTION_ID_CREATE_DYNAMIC_VERTEX_BUFFER: c_int = 44;
pub const BGFX_FUNCTION_ID_CREATE_DYNAMIC_VERTEX_BUFFER_MEM: c_int = 45;
pub const BGFX_FUNCTION_ID_UPDATE_DYNAMIC_VERTEX_BUFFER: c_int = 46;
pub const BGFX_FUNCTION_ID_DESTROY_DYNAMIC_VERTEX_BUFFER: c_int = 47;
pub const BGFX_FUNCTION_ID_GET_AVAIL_TRANSIENT_INDEX_BUFFER: c_int = 48;
pub const BGFX_FUNCTION_ID_GET_AVAIL_TRANSIENT_VERTEX_BUFFER: c_int = 49;
pub const BGFX_FUNCTION_ID_GET_AVAIL_INSTANCE_DATA_BUFFER: c_int = 50;
pub const BGFX_FUNCTION_ID_ALLOC_TRANSIENT_INDEX_BUFFER: c_int = 51;
pub const BGFX_FUNCTION_ID_ALLOC_TRANSIENT_VERTEX_BUFFER: c_int = 52;
pub const BGFX_FUNCTION_ID_ALLOC_TRANSIENT_BUFFERS: c_int = 53;
pub const BGFX_FUNCTION_ID_ALLOC_INSTANCE_DATA_BUFFER: c_int = 54;
pub const BGFX_FUNCTION_ID_CREATE_INDIRECT_BUFFER: c_int = 55;
pub const BGFX_FUNCTION_ID_DESTROY_INDIRECT_BUFFER: c_int = 56;
pub const BGFX_FUNCTION_ID_CREATE_SHADER: c_int = 57;
pub const BGFX_FUNCTION_ID_GET_SHADER_UNIFORMS: c_int = 58;
pub const BGFX_FUNCTION_ID_SET_SHADER_NAME: c_int = 59;
pub const BGFX_FUNCTION_ID_DESTROY_SHADER: c_int = 60;
pub const BGFX_FUNCTION_ID_CREATE_PROGRAM: c_int = 61;
pub const BGFX_FUNCTION_ID_CREATE_COMPUTE_PROGRAM: c_int = 62;
pub const BGFX_FUNCTION_ID_DESTROY_PROGRAM: c_int = 63;
pub const BGFX_FUNCTION_ID_IS_TEXTURE_VALID: c_int = 64;
pub const BGFX_FUNCTION_ID_IS_FRAME_BUFFER_VALID: c_int = 65;
pub const BGFX_FUNCTION_ID_CALC_TEXTURE_SIZE: c_int = 66;
pub const BGFX_FUNCTION_ID_CREATE_TEXTURE: c_int = 67;
pub const BGFX_FUNCTION_ID_CREATE_TEXTURE_2D: c_int = 68;
pub const BGFX_FUNCTION_ID_CREATE_TEXTURE_2D_SCALED: c_int = 69;
pub const BGFX_FUNCTION_ID_CREATE_TEXTURE_3D: c_int = 70;
pub const BGFX_FUNCTION_ID_CREATE_TEXTURE_CUBE: c_int = 71;
pub const BGFX_FUNCTION_ID_UPDATE_TEXTURE_2D: c_int = 72;
pub const BGFX_FUNCTION_ID_UPDATE_TEXTURE_3D: c_int = 73;
pub const BGFX_FUNCTION_ID_UPDATE_TEXTURE_CUBE: c_int = 74;
pub const BGFX_FUNCTION_ID_READ_TEXTURE: c_int = 75;
pub const BGFX_FUNCTION_ID_SET_TEXTURE_NAME: c_int = 76;
pub const BGFX_FUNCTION_ID_GET_DIRECT_ACCESS_PTR: c_int = 77;
pub const BGFX_FUNCTION_ID_DESTROY_TEXTURE: c_int = 78;
pub const BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER: c_int = 79;
pub const BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_SCALED: c_int = 80;
pub const BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_FROM_HANDLES: c_int = 81;
pub const BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_FROM_ATTACHMENT: c_int = 82;
pub const BGFX_FUNCTION_ID_CREATE_FRAME_BUFFER_FROM_NWH: c_int = 83;
pub const BGFX_FUNCTION_ID_SET_FRAME_BUFFER_NAME: c_int = 84;
pub const BGFX_FUNCTION_ID_GET_TEXTURE: c_int = 85;
pub const BGFX_FUNCTION_ID_DESTROY_FRAME_BUFFER: c_int = 86;
pub const BGFX_FUNCTION_ID_CREATE_UNIFORM: c_int = 87;
pub const BGFX_FUNCTION_ID_GET_UNIFORM_INFO: c_int = 88;
pub const BGFX_FUNCTION_ID_DESTROY_UNIFORM: c_int = 89;
pub const BGFX_FUNCTION_ID_CREATE_OCCLUSION_QUERY: c_int = 90;
pub const BGFX_FUNCTION_ID_GET_RESULT: c_int = 91;
pub const BGFX_FUNCTION_ID_DESTROY_OCCLUSION_QUERY: c_int = 92;
pub const BGFX_FUNCTION_ID_SET_PALETTE_COLOR: c_int = 93;
pub const BGFX_FUNCTION_ID_SET_PALETTE_COLOR_RGBA8: c_int = 94;
pub const BGFX_FUNCTION_ID_SET_VIEW_NAME: c_int = 95;
pub const BGFX_FUNCTION_ID_SET_VIEW_RECT: c_int = 96;
pub const BGFX_FUNCTION_ID_SET_VIEW_RECT_RATIO: c_int = 97;
pub const BGFX_FUNCTION_ID_SET_VIEW_SCISSOR: c_int = 98;
pub const BGFX_FUNCTION_ID_SET_VIEW_CLEAR: c_int = 99;
pub const BGFX_FUNCTION_ID_SET_VIEW_CLEAR_MRT: c_int = 100;
pub const BGFX_FUNCTION_ID_SET_VIEW_MODE: c_int = 101;
pub const BGFX_FUNCTION_ID_SET_VIEW_FRAME_BUFFER: c_int = 102;
pub const BGFX_FUNCTION_ID_SET_VIEW_TRANSFORM: c_int = 103;
pub const BGFX_FUNCTION_ID_SET_VIEW_ORDER: c_int = 104;
pub const BGFX_FUNCTION_ID_RESET_VIEW: c_int = 105;
pub const BGFX_FUNCTION_ID_ENCODER_BEGIN: c_int = 106;
pub const BGFX_FUNCTION_ID_ENCODER_END: c_int = 107;
pub const BGFX_FUNCTION_ID_ENCODER_SET_MARKER: c_int = 108;
pub const BGFX_FUNCTION_ID_ENCODER_SET_STATE: c_int = 109;
pub const BGFX_FUNCTION_ID_ENCODER_SET_CONDITION: c_int = 110;
pub const BGFX_FUNCTION_ID_ENCODER_SET_STENCIL: c_int = 111;
pub const BGFX_FUNCTION_ID_ENCODER_SET_SCISSOR: c_int = 112;
pub const BGFX_FUNCTION_ID_ENCODER_SET_SCISSOR_CACHED: c_int = 113;
pub const BGFX_FUNCTION_ID_ENCODER_SET_TRANSFORM: c_int = 114;
pub const BGFX_FUNCTION_ID_ENCODER_SET_TRANSFORM_CACHED: c_int = 115;
pub const BGFX_FUNCTION_ID_ENCODER_ALLOC_TRANSFORM: c_int = 116;
pub const BGFX_FUNCTION_ID_ENCODER_SET_UNIFORM: c_int = 117;
pub const BGFX_FUNCTION_ID_ENCODER_SET_INDEX_BUFFER: c_int = 118;
pub const BGFX_FUNCTION_ID_ENCODER_SET_DYNAMIC_INDEX_BUFFER: c_int = 119;
pub const BGFX_FUNCTION_ID_ENCODER_SET_TRANSIENT_INDEX_BUFFER: c_int = 120;
pub const BGFX_FUNCTION_ID_ENCODER_SET_VERTEX_BUFFER: c_int = 121;
pub const BGFX_FUNCTION_ID_ENCODER_SET_VERTEX_BUFFER_WITH_LAYOUT: c_int = 122;
pub const BGFX_FUNCTION_ID_ENCODER_SET_DYNAMIC_VERTEX_BUFFER: c_int = 123;
pub const BGFX_FUNCTION_ID_ENCODER_SET_DYNAMIC_VERTEX_BUFFER_WITH_LAYOUT: c_int = 124;
pub const BGFX_FUNCTION_ID_ENCODER_SET_TRANSIENT_VERTEX_BUFFER: c_int = 125;
pub const BGFX_FUNCTION_ID_ENCODER_SET_TRANSIENT_VERTEX_BUFFER_WITH_LAYOUT: c_int = 126;
pub const BGFX_FUNCTION_ID_ENCODER_SET_VERTEX_COUNT: c_int = 127;
pub const BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_DATA_BUFFER: c_int = 128;
pub const BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_DATA_FROM_VERTEX_BUFFER: c_int = 129;
pub const BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_DATA_FROM_DYNAMIC_VERTEX_BUFFER: c_int = 130;
pub const BGFX_FUNCTION_ID_ENCODER_SET_INSTANCE_COUNT: c_int = 131;
pub const BGFX_FUNCTION_ID_ENCODER_SET_TEXTURE: c_int = 132;
pub const BGFX_FUNCTION_ID_ENCODER_TOUCH: c_int = 133;
pub const BGFX_FUNCTION_ID_ENCODER_SUBMIT: c_int = 134;
pub const BGFX_FUNCTION_ID_ENCODER_SUBMIT_OCCLUSION_QUERY: c_int = 135;
pub const BGFX_FUNCTION_ID_ENCODER_SUBMIT_INDIRECT: c_int = 136;
pub const BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_INDEX_BUFFER: c_int = 137;
pub const BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_VERTEX_BUFFER: c_int = 138;
pub const BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_DYNAMIC_INDEX_BUFFER: c_int = 139;
pub const BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_DYNAMIC_VERTEX_BUFFER: c_int = 140;
pub const BGFX_FUNCTION_ID_ENCODER_SET_COMPUTE_INDIRECT_BUFFER: c_int = 141;
pub const BGFX_FUNCTION_ID_ENCODER_SET_IMAGE: c_int = 142;
pub const BGFX_FUNCTION_ID_ENCODER_DISPATCH: c_int = 143;
pub const BGFX_FUNCTION_ID_ENCODER_DISPATCH_INDIRECT: c_int = 144;
pub const BGFX_FUNCTION_ID_ENCODER_DISCARD: c_int = 145;
pub const BGFX_FUNCTION_ID_ENCODER_BLIT: c_int = 146;
pub const BGFX_FUNCTION_ID_REQUEST_SCREEN_SHOT: c_int = 147;
pub const BGFX_FUNCTION_ID_RENDER_FRAME: c_int = 148;
pub const BGFX_FUNCTION_ID_SET_PLATFORM_DATA: c_int = 149;
pub const BGFX_FUNCTION_ID_GET_INTERNAL_DATA: c_int = 150;
pub const BGFX_FUNCTION_ID_OVERRIDE_INTERNAL_TEXTURE_PTR: c_int = 151;
pub const BGFX_FUNCTION_ID_OVERRIDE_INTERNAL_TEXTURE: c_int = 152;
pub const BGFX_FUNCTION_ID_SET_MARKER: c_int = 153;
pub const BGFX_FUNCTION_ID_SET_STATE: c_int = 154;
pub const BGFX_FUNCTION_ID_SET_CONDITION: c_int = 155;
pub const BGFX_FUNCTION_ID_SET_STENCIL: c_int = 156;
pub const BGFX_FUNCTION_ID_SET_SCISSOR: c_int = 157;
pub const BGFX_FUNCTION_ID_SET_SCISSOR_CACHED: c_int = 158;
pub const BGFX_FUNCTION_ID_SET_TRANSFORM: c_int = 159;
pub const BGFX_FUNCTION_ID_SET_TRANSFORM_CACHED: c_int = 160;
pub const BGFX_FUNCTION_ID_ALLOC_TRANSFORM: c_int = 161;
pub const BGFX_FUNCTION_ID_SET_UNIFORM: c_int = 162;
pub const BGFX_FUNCTION_ID_SET_INDEX_BUFFER: c_int = 163;
pub const BGFX_FUNCTION_ID_SET_DYNAMIC_INDEX_BUFFER: c_int = 164;
pub const BGFX_FUNCTION_ID_SET_TRANSIENT_INDEX_BUFFER: c_int = 165;
pub const BGFX_FUNCTION_ID_SET_VERTEX_BUFFER: c_int = 166;
pub const BGFX_FUNCTION_ID_SET_VERTEX_BUFFER_WITH_LAYOUT: c_int = 167;
pub const BGFX_FUNCTION_ID_SET_DYNAMIC_VERTEX_BUFFER: c_int = 168;
pub const BGFX_FUNCTION_ID_SET_DYNAMIC_VERTEX_BUFFER_WITH_LAYOUT: c_int = 169;
pub const BGFX_FUNCTION_ID_SET_TRANSIENT_VERTEX_BUFFER: c_int = 170;
pub const BGFX_FUNCTION_ID_SET_TRANSIENT_VERTEX_BUFFER_WITH_LAYOUT: c_int = 171;
pub const BGFX_FUNCTION_ID_SET_VERTEX_COUNT: c_int = 172;
pub const BGFX_FUNCTION_ID_SET_INSTANCE_DATA_BUFFER: c_int = 173;
pub const BGFX_FUNCTION_ID_SET_INSTANCE_DATA_FROM_VERTEX_BUFFER: c_int = 174;
pub const BGFX_FUNCTION_ID_SET_INSTANCE_DATA_FROM_DYNAMIC_VERTEX_BUFFER: c_int = 175;
pub const BGFX_FUNCTION_ID_SET_INSTANCE_COUNT: c_int = 176;
pub const BGFX_FUNCTION_ID_SET_TEXTURE: c_int = 177;
pub const BGFX_FUNCTION_ID_TOUCH: c_int = 178;
pub const BGFX_FUNCTION_ID_SUBMIT: c_int = 179;
pub const BGFX_FUNCTION_ID_SUBMIT_OCCLUSION_QUERY: c_int = 180;
pub const BGFX_FUNCTION_ID_SUBMIT_INDIRECT: c_int = 181;
pub const BGFX_FUNCTION_ID_SET_COMPUTE_INDEX_BUFFER: c_int = 182;
pub const BGFX_FUNCTION_ID_SET_COMPUTE_VERTEX_BUFFER: c_int = 183;
pub const BGFX_FUNCTION_ID_SET_COMPUTE_DYNAMIC_INDEX_BUFFER: c_int = 184;
pub const BGFX_FUNCTION_ID_SET_COMPUTE_DYNAMIC_VERTEX_BUFFER: c_int = 185;
pub const BGFX_FUNCTION_ID_SET_COMPUTE_INDIRECT_BUFFER: c_int = 186;
pub const BGFX_FUNCTION_ID_SET_IMAGE: c_int = 187;
pub const BGFX_FUNCTION_ID_DISPATCH: c_int = 188;
pub const BGFX_FUNCTION_ID_DISPATCH_INDIRECT: c_int = 189;
pub const BGFX_FUNCTION_ID_DISCARD: c_int = 190;
pub const BGFX_FUNCTION_ID_BLIT: c_int = 191;
pub const BGFX_FUNCTION_ID_COUNT: c_int = 192;
pub const enum_bgfx_function_id = c_uint;
pub const bgfx_function_id_t = enum_bgfx_function_id;
pub const PFN_BGFX_GET_INTERFACE = ?fn (u32) callconv(.C) [*c]bgfx_interface_vtbl_t;
pub extern fn bgfx_get_interface(_version: u32) [*c]bgfx_interface_vtbl_t;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):66:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):72:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):164:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):186:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):194:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):315:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):316:9
pub const __declspec = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):380:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):381:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):382:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):383:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):384:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):385:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):386:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):387:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):388:9
pub const _pascal = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):389:9
pub const __pascal = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):390:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\Users\cata\scoop\apps\zig\current\lib\include\stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\Users\cata\scoop\apps\zig\current\lib\include\stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\Users\cata\scoop\apps\zig\current\lib\include\stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Users\cata\scoop\apps\zig\current\lib\include\stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Users\cata\scoop\apps\zig\current\lib\include\stdarg.h:27:9
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:10:9
pub const __MINGW64_VERSION_STR = @compileError("unable to translate C expr: unexpected token .StringLiteral"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:26:9
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:119:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:120:11
pub const __MINGW_LSYMBOL = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:122:11
pub const __MINGW_ASM_CALL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:130:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:131:9
pub const __MINGW_EXTENSION = @compileError("unable to translate macro: undefined identifier `__extension__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:163:13
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:203:11
pub const __MSABI_LONG = @compileError("unable to translate macro: undefined identifier `l`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:209:13
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:247:11
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:270:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:273:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:276:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:279:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_mac.h:289:11
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token .Identifier"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:51:12
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:59:15
pub const _inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:81:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:90:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__inline__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:97:9
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:111:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:126:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:142:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:143:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:153:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:154:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:167:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:173:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:179:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:180:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:182:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:197:9
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:215:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:218:9
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__inline__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:267:9
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:286:9
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:291:9
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:350:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:353:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:357:9
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:365:9
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:392:9
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:456:9
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:476:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:477:9
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:564:9
pub const __MINGW_DEBUGBREAK_IMPL = @compileError("unable to translate macro: undefined identifier `__has_builtin`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\_mingw.h:575:9
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:148:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:274:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:275:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:276:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:278:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:282:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:284:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:286:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:288:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:290:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:427:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:428:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:429:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:430:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:431:9
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token .Eof"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\corecrt.h:491:9
pub const INT64_C = @compileError("unable to translate macro: undefined identifier `LL`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdint.h:198:9
pub const UINT64_C = @compileError("unable to translate macro: undefined identifier `ULL`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdint.h:203:9
pub const INTMAX_C = @compileError("unable to translate macro: undefined identifier `LL`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdint.h:206:9
pub const UINTMAX_C = @compileError("unable to translate macro: undefined identifier `ULL`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdint.h:207:9
pub const _SECIMP = @compileError("unable to translate macro: undefined identifier `dllimport`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:22:9
pub const _countof = @compileError("unable to translate C expr: expected ')'"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\stdlib.h:377:9
pub const _STATIC_ASSERT = @compileError("unable to translate macro: undefined identifier `__static_assert_t`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\malloc.h:27:9
pub const _alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\malloc.h:93:9
pub const alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // C:\Users\cata\scoop\apps\zig\current\lib\libc\include\any-windows-any\malloc.h:159:9
pub const BX_COMPILER_NAME = @compileError("unable to translate macro: undefined identifier `BX_STRINGIZE`"); // .\3rdparty\bx\include\bx/platform.h:340:10
pub const BGFX_INVALID_HANDLE = @compileError("unable to translate C expr: unexpected token .LBrace"); // .\3rdparty\bgfx\include\bgfx\c99\bgfx.h:26:12
pub const BGFX_SYMBOL_EXPORT = @compileError("unable to translate macro: undefined identifier `dllexport`"); // .\3rdparty\bgfx\include\bgfx\c99\bgfx.h:38:12
pub const BGFX_SYMBOL_IMPORT = @compileError("unable to translate macro: undefined identifier `dllimport`"); // .\3rdparty\bgfx\include\bgfx\c99\bgfx.h:39:12
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-16";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_TYPE__ = c_ushort;
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver2 = @as(c_int, 1);
pub const __znver2__ = @as(c_int, 1);
pub const __tune_znver2__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const BGFX_C99_H_HEADER_GUARD = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const __STDBOOL_H = "";
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const _INC_CRTDEFS = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 9);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    return sym;
}
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = major;
    _ = minor;
    return @as(c_int, 0);
}
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __mingw_static_ovr = __mingw_ovr;
pub const __mingw_attribute_artificial = "";
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __LONG32 = c_long;
pub const __USE_CRTIMP = @as(c_int, 1);
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";
pub const __MSVCRT_VERSION__ = @as(c_int, 0x700);
pub const _WIN32_WINNT = @as(c_int, 0x0603);
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    return &v;
}
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    return __CRT_STRINGIZE(_Value);
}
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub const _CONST_RETURN = "";
pub const UNALIGNED = __unaligned;
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    return @import("std").zig.c_translation.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 1);
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const __need_wint_t = "";
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const WCHAR_MIN = @as(c_uint, 0);
pub const WCHAR_MAX = @as(c_uint, 0xffff);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 0xffff);
pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}
pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}
pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    return val;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const _INC_STDLIB = "";
pub const _INC_CORECRT_WSTDLIB = "";
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _INC_LIMITS = "";
pub const PATH_MAX = @as(c_int, 260);
pub const CHAR_BIT = @as(c_int, 8);
pub const SCHAR_MIN = -@as(c_int, 128);
pub const SCHAR_MAX = @as(c_int, 127);
pub const UCHAR_MAX = @as(c_int, 0xff);
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = SCHAR_MAX;
pub const MB_LEN_MAX = @as(c_int, 5);
pub const SHRT_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SHRT_MAX = @as(c_int, 32767);
pub const USHRT_MAX = @as(c_uint, 0xffff);
pub const INT_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const UINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const LONG_MIN = -@as(c_long, 2147483647) - @as(c_int, 1);
pub const LONG_MAX = @as(c_long, 2147483647);
pub const ULONG_MAX = @as(c_ulong, 0xffffffff);
pub const LLONG_MAX = @as(c_longlong, 9223372036854775807);
pub const LLONG_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const ULLONG_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const _I8_MIN = -@as(c_int, 127) - @as(c_int, 1);
pub const _I8_MAX = @as(c_int, 127);
pub const _UI8_MAX = @as(c_uint, 0xff);
pub const _I16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const _I16_MAX = @as(c_int, 32767);
pub const _UI16_MAX = @as(c_uint, 0xffff);
pub const _I32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const _I32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const _UI32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const LONG_LONG_MAX = @as(c_longlong, 9223372036854775807);
pub const LONG_LONG_MIN = -LONG_LONG_MAX - @as(c_int, 1);
pub const ULONG_LONG_MAX = (@as(c_ulonglong, 2) * LONG_LONG_MAX) + @as(c_ulonglong, 1);
pub const _I64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const _I64_MAX = @as(c_longlong, 9223372036854775807);
pub const _UI64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const SSIZE_MAX = _I64_MAX;
pub const __USE_MINGW_STRTOX = @as(c_int, 1);
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const _ONEXIT_T_DEFINED = "";
pub const onexit_t = _onexit_t;
pub const _DIV_T_DEFINED = "";
pub const _CRT_DOUBLE_DEC = "";
pub inline fn _PTR_LD(x: anytype) [*c]u8 {
    return @import("std").zig.c_translation.cast([*c]u8, &x.*.ld);
}
pub const RAND_MAX = @as(c_int, 0x7fff);
pub const MB_CUR_MAX = ___mb_cur_max_func();
pub const __mb_cur_max = ___mb_cur_max_func();
pub inline fn __max(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub inline fn __min(a: anytype, b: anytype) @TypeOf(if (a < b) a else b) {
    return if (a < b) a else b;
}
pub const _MAX_PATH = @as(c_int, 260);
pub const _MAX_DRIVE = @as(c_int, 3);
pub const _MAX_DIR = @as(c_int, 256);
pub const _MAX_FNAME = @as(c_int, 256);
pub const _MAX_EXT = @as(c_int, 256);
pub const _OUT_TO_DEFAULT = @as(c_int, 0);
pub const _OUT_TO_STDERR = @as(c_int, 1);
pub const _OUT_TO_MSGBOX = @as(c_int, 2);
pub const _REPORT_ERRMODE = @as(c_int, 3);
pub const _WRITE_ABORT_MSG = @as(c_int, 0x1);
pub const _CALL_REPORTFAULT = @as(c_int, 0x2);
pub const _MAX_ENV = @as(c_int, 32767);
pub const _CRT_ERRNO_DEFINED = "";
pub const errno = _errno().*;
pub const _doserrno = __doserrno().*;
pub const _fmode = __p__fmode().*;
pub const __argc = __MINGW_IMP_SYMBOL(__argc).*;
pub const __argv = __p___argv().*;
pub const __wargv = __MINGW_IMP_SYMBOL(__wargv).*;
pub const _environ = __MINGW_IMP_SYMBOL(_environ).*;
pub const _wenviron = __MINGW_IMP_SYMBOL(_wenviron).*;
pub const _pgmptr = __MINGW_IMP_SYMBOL(_pgmptr).*;
pub const _wpgmptr = __MINGW_IMP_SYMBOL(_wpgmptr).*;
pub const _osplatform = __MINGW_IMP_SYMBOL(_osplatform).*;
pub const _osver = __MINGW_IMP_SYMBOL(_osver).*;
pub const _winver = __MINGW_IMP_SYMBOL(_winver).*;
pub const _winmajor = __MINGW_IMP_SYMBOL(_winmajor).*;
pub const _winminor = __MINGW_IMP_SYMBOL(_winminor).*;
pub const _CRT_TERMINATE_DEFINED = "";
pub const _CRT_ABS_DEFINED = "";
pub const _CRT_ATOF_DEFINED = "";
pub const _CRT_ALGO_DEFINED = "";
pub const _CRT_SYSTEM_DEFINED = "";
pub const _CRT_ALLOCATION_DEFINED = "";
pub const _WSTDLIB_DEFINED = "";
pub const _CRT_WSYSTEM_DEFINED = "";
pub const _CVTBUFSIZE = @as(c_int, 309) + @as(c_int, 40);
pub const _CRT_PERROR_DEFINED = "";
pub const _WSTDLIBP_DEFINED = "";
pub const _CRT_WPERROR_DEFINED = "";
pub const sys_errlist = _sys_errlist;
pub const sys_nerr = _sys_nerr;
pub const environ = _environ;
pub const _CRT_SWAB_DEFINED = "";
pub const _INC_STDLIB_S = "";
pub const _QSORT_S_DEFINED = "";
pub const _MALLOC_H_ = "";
pub const _HEAP_MAXREQ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFFFFFFFFE0, .hexadecimal);
pub const _HEAPEMPTY = -@as(c_int, 1);
pub const _HEAPOK = -@as(c_int, 2);
pub const _HEAPBADBEGIN = -@as(c_int, 3);
pub const _HEAPBADNODE = -@as(c_int, 4);
pub const _HEAPEND = -@as(c_int, 5);
pub const _HEAPBADPTR = -@as(c_int, 6);
pub const _FREEENTRY = @as(c_int, 0);
pub const _USEDENTRY = @as(c_int, 1);
pub const _HEAPINFO_DEFINED = "";
pub const __MM_MALLOC_H = "";
pub const _MAX_WAIT_MALLOC_CRT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const _ALLOCA_S_THRESHOLD = @as(c_int, 1024);
pub const _ALLOCA_S_STACK_MARKER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xCCCC, .hexadecimal);
pub const _ALLOCA_S_HEAP_MARKER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xDDDD, .hexadecimal);
pub const _ALLOCA_S_MARKER_SIZE = @as(c_int, 16);
pub inline fn _malloca(size: anytype) @TypeOf(if ((size + _ALLOCA_S_MARKER_SIZE) <= _ALLOCA_S_THRESHOLD) _MarkAllocaS(_alloca(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_STACK_MARKER) else _MarkAllocaS(malloc(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_HEAP_MARKER)) {
    return if ((size + _ALLOCA_S_MARKER_SIZE) <= _ALLOCA_S_THRESHOLD) _MarkAllocaS(_alloca(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_STACK_MARKER) else _MarkAllocaS(malloc(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_HEAP_MARKER);
}
pub const _FREEA_INLINE = "";
pub const BX_PLATFORM_H_HEADER_GUARD = "";
pub const BX_ARCH_32BIT = @as(c_int, 0);
pub const BX_ARCH_64BIT = @as(c_int, 0);
pub const BX_COMPILER_CLANG = @as(c_int, 0);
pub const BX_COMPILER_CLANG_ANALYZER = @as(c_int, 0);
pub const BX_COMPILER_GCC = @as(c_int, 0);
pub const BX_COMPILER_MSVC = @as(c_int, 0);
pub const BX_CPU_ENDIAN_BIG = @as(c_int, 0);
pub const BX_CPU_ENDIAN_LITTLE = @as(c_int, 0);
pub const BX_CPU_ARM = @as(c_int, 0);
pub const BX_CPU_JIT = @as(c_int, 0);
pub const BX_CPU_MIPS = @as(c_int, 0);
pub const BX_CPU_PPC = @as(c_int, 0);
pub const BX_CPU_RISCV = @as(c_int, 0);
pub const BX_CPU_X86 = @as(c_int, 0);
pub const BX_CRT_BIONIC = @as(c_int, 0);
pub const BX_CRT_BSD = @as(c_int, 0);
pub const BX_CRT_GLIBC = @as(c_int, 0);
pub const BX_CRT_LIBCXX = @as(c_int, 0);
pub const BX_CRT_MINGW = @as(c_int, 0);
pub const BX_CRT_MSVC = @as(c_int, 0);
pub const BX_CRT_NEWLIB = @as(c_int, 0);
pub const BX_CRT_MUSL = @as(c_int, 0);
pub const BX_CRT_NONE = @as(c_int, 0);
pub const BX_PLATFORM_ANDROID = @as(c_int, 0);
pub const BX_PLATFORM_BSD = @as(c_int, 0);
pub const BX_PLATFORM_EMSCRIPTEN = @as(c_int, 0);
pub const BX_PLATFORM_HAIKU = @as(c_int, 0);
pub const BX_PLATFORM_HURD = @as(c_int, 0);
pub const BX_PLATFORM_IOS = @as(c_int, 0);
pub const BX_PLATFORM_LINUX = @as(c_int, 0);
pub const BX_PLATFORM_NX = @as(c_int, 0);
pub const BX_PLATFORM_OSX = @as(c_int, 0);
pub const BX_PLATFORM_PS4 = @as(c_int, 0);
pub const BX_PLATFORM_PS5 = @as(c_int, 0);
pub const BX_PLATFORM_RPI = @as(c_int, 0);
pub const BX_PLATFORM_WINDOWS = @as(c_int, 0);
pub const BX_PLATFORM_WINRT = @as(c_int, 0);
pub const BX_PLATFORM_XBOXONE = @as(c_int, 0);
pub const BX_CACHE_LINE_SIZE = @as(c_int, 64);
pub const NOMINMAX = "";
pub const BX_PLATFORM_POSIX = ((((((((((((@as(c_int, 0) != 0) or (BX_PLATFORM_ANDROID != 0)) or (BX_PLATFORM_BSD != 0)) or (BX_PLATFORM_EMSCRIPTEN != 0)) or (BX_PLATFORM_HAIKU != 0)) or (BX_PLATFORM_HURD != 0)) or (BX_PLATFORM_IOS != 0)) or (BX_PLATFORM_LINUX != 0)) or (BX_PLATFORM_NX != 0)) or (BX_PLATFORM_OSX != 0)) or (BX_PLATFORM_PS4 != 0)) or (BX_PLATFORM_PS5 != 0)) or (BX_PLATFORM_RPI != 0);
pub const BX_PLATFORM_NONE = !((((((((((((((((@as(c_int, 0) != 0) or (BX_PLATFORM_ANDROID != 0)) or (BX_PLATFORM_BSD != 0)) or (BX_PLATFORM_EMSCRIPTEN != 0)) or (BX_PLATFORM_HAIKU != 0)) or (BX_PLATFORM_HURD != 0)) or (BX_PLATFORM_IOS != 0)) or (BX_PLATFORM_LINUX != 0)) or (BX_PLATFORM_NX != 0)) or (BX_PLATFORM_OSX != 0)) or (BX_PLATFORM_PS4 != 0)) or (BX_PLATFORM_PS5 != 0)) or (BX_PLATFORM_RPI != 0)) or (BX_PLATFORM_WINDOWS != 0)) or (BX_PLATFORM_WINRT != 0)) or (BX_PLATFORM_XBOXONE != 0));
pub const BX_PLATFORM_OS_CONSOLE = (((((@as(c_int, 0) != 0) or (BX_PLATFORM_NX != 0)) or (BX_PLATFORM_PS4 != 0)) or (BX_PLATFORM_PS5 != 0)) or (BX_PLATFORM_WINRT != 0)) or (BX_PLATFORM_XBOXONE != 0);
pub const BX_PLATFORM_OS_DESKTOP = ((((((@as(c_int, 0) != 0) or (BX_PLATFORM_BSD != 0)) or (BX_PLATFORM_HAIKU != 0)) or (BX_PLATFORM_HURD != 0)) or (BX_PLATFORM_LINUX != 0)) or (BX_PLATFORM_OSX != 0)) or (BX_PLATFORM_WINDOWS != 0);
pub const BX_PLATFORM_OS_EMBEDDED = (@as(c_int, 0) != 0) or (BX_PLATFORM_RPI != 0);
pub const BX_PLATFORM_OS_MOBILE = ((@as(c_int, 0) != 0) or (BX_PLATFORM_ANDROID != 0)) or (BX_PLATFORM_IOS != 0);
pub const BX_PLATFORM_OS_WEB = (@as(c_int, 0) != 0) or (BX_PLATFORM_EMSCRIPTEN != 0);
pub const BX_PLATFORM_NAME = "Windows";
pub const BX_CPU_NAME = "x86";
pub const BX_CRT_NAME = "MinGW C Runtime";
pub const BX_ARCH_NAME = "64-bit";
pub const BX_CPP_NAME = "C++Unknown";
pub const BGFX_SHARED_LIB_BUILD = @as(c_int, 0);
pub const BGFX_SHARED_LIB_USE = @as(c_int, 0);
pub const BGFX_SHARED_LIB_API = "";
pub const BGFX_C_API = BGFX_SHARED_LIB_API;
pub const BGFX_DEFINES_H_HEADER_GUARD = "";
pub const BGFX_API_VERSION = UINT32_C(@as(c_int, 115));
pub const BGFX_STATE_WRITE_R = UINT64_C(@as(c_int, 0x0000000000000001));
pub const BGFX_STATE_WRITE_G = UINT64_C(@as(c_int, 0x0000000000000002));
pub const BGFX_STATE_WRITE_B = UINT64_C(@as(c_int, 0x0000000000000004));
pub const BGFX_STATE_WRITE_A = UINT64_C(@as(c_int, 0x0000000000000008));
pub const BGFX_STATE_WRITE_Z = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000004000000000, .hexadecimal));
pub const BGFX_STATE_WRITE_RGB = ((@as(c_int, 0) | BGFX_STATE_WRITE_R) | BGFX_STATE_WRITE_G) | BGFX_STATE_WRITE_B;
pub const BGFX_STATE_WRITE_MASK = ((@as(c_int, 0) | BGFX_STATE_WRITE_RGB) | BGFX_STATE_WRITE_A) | BGFX_STATE_WRITE_Z;
pub const BGFX_STATE_DEPTH_TEST_LESS = UINT64_C(@as(c_int, 0x0000000000000010));
pub const BGFX_STATE_DEPTH_TEST_LEQUAL = UINT64_C(@as(c_int, 0x0000000000000020));
pub const BGFX_STATE_DEPTH_TEST_EQUAL = UINT64_C(@as(c_int, 0x0000000000000030));
pub const BGFX_STATE_DEPTH_TEST_GEQUAL = UINT64_C(@as(c_int, 0x0000000000000040));
pub const BGFX_STATE_DEPTH_TEST_GREATER = UINT64_C(@as(c_int, 0x0000000000000050));
pub const BGFX_STATE_DEPTH_TEST_NOTEQUAL = UINT64_C(@as(c_int, 0x0000000000000060));
pub const BGFX_STATE_DEPTH_TEST_NEVER = UINT64_C(@as(c_int, 0x0000000000000070));
pub const BGFX_STATE_DEPTH_TEST_ALWAYS = UINT64_C(@as(c_int, 0x0000000000000080));
pub const BGFX_STATE_DEPTH_TEST_SHIFT = @as(c_int, 4);
pub const BGFX_STATE_DEPTH_TEST_MASK = UINT64_C(@as(c_int, 0x00000000000000f0));
pub const BGFX_STATE_BLEND_ZERO = UINT64_C(@as(c_int, 0x0000000000001000));
pub const BGFX_STATE_BLEND_ONE = UINT64_C(@as(c_int, 0x0000000000002000));
pub const BGFX_STATE_BLEND_SRC_COLOR = UINT64_C(@as(c_int, 0x0000000000003000));
pub const BGFX_STATE_BLEND_INV_SRC_COLOR = UINT64_C(@as(c_int, 0x0000000000004000));
pub const BGFX_STATE_BLEND_SRC_ALPHA = UINT64_C(@as(c_int, 0x0000000000005000));
pub const BGFX_STATE_BLEND_INV_SRC_ALPHA = UINT64_C(@as(c_int, 0x0000000000006000));
pub const BGFX_STATE_BLEND_DST_ALPHA = UINT64_C(@as(c_int, 0x0000000000007000));
pub const BGFX_STATE_BLEND_INV_DST_ALPHA = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000008000, .hexadecimal));
pub const BGFX_STATE_BLEND_DST_COLOR = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000009000, .hexadecimal));
pub const BGFX_STATE_BLEND_INV_DST_COLOR = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000000000000a000, .hexadecimal));
pub const BGFX_STATE_BLEND_SRC_ALPHA_SAT = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000000000000b000, .hexadecimal));
pub const BGFX_STATE_BLEND_FACTOR = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000000000000c000, .hexadecimal));
pub const BGFX_STATE_BLEND_INV_FACTOR = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000000000000d000, .hexadecimal));
pub const BGFX_STATE_BLEND_SHIFT = @as(c_int, 12);
pub const BGFX_STATE_BLEND_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000000000ffff000, .hexadecimal));
pub const BGFX_STATE_BLEND_EQUATION_ADD = UINT64_C(@as(c_int, 0x0000000000000000));
pub const BGFX_STATE_BLEND_EQUATION_SUB = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000010000000, .hexadecimal));
pub const BGFX_STATE_BLEND_EQUATION_REVSUB = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000020000000, .hexadecimal));
pub const BGFX_STATE_BLEND_EQUATION_MIN = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000030000000, .hexadecimal));
pub const BGFX_STATE_BLEND_EQUATION_MAX = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000040000000, .hexadecimal));
pub const BGFX_STATE_BLEND_EQUATION_SHIFT = @as(c_int, 28);
pub const BGFX_STATE_BLEND_EQUATION_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00000003f0000000, .hexadecimal));
pub const BGFX_STATE_CULL_CW = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000001000000000, .hexadecimal));
pub const BGFX_STATE_CULL_CCW = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000002000000000, .hexadecimal));
pub const BGFX_STATE_CULL_SHIFT = @as(c_int, 36);
pub const BGFX_STATE_CULL_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000003000000000, .hexadecimal));
pub const BGFX_STATE_ALPHA_REF_SHIFT = @as(c_int, 40);
pub const BGFX_STATE_ALPHA_REF_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000ff0000000000, .hexadecimal));
pub inline fn BGFX_STATE_ALPHA_REF(v: anytype) @TypeOf((@import("std").zig.c_translation.cast(u64, v) << BGFX_STATE_ALPHA_REF_SHIFT) & BGFX_STATE_ALPHA_REF_MASK) {
    return (@import("std").zig.c_translation.cast(u64, v) << BGFX_STATE_ALPHA_REF_SHIFT) & BGFX_STATE_ALPHA_REF_MASK;
}
pub const BGFX_STATE_PT_TRISTRIP = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000000000000, .hexadecimal));
pub const BGFX_STATE_PT_LINES = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000000000000, .hexadecimal));
pub const BGFX_STATE_PT_LINESTRIP = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0003000000000000, .hexadecimal));
pub const BGFX_STATE_PT_POINTS = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0004000000000000, .hexadecimal));
pub const BGFX_STATE_PT_SHIFT = @as(c_int, 48);
pub const BGFX_STATE_PT_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0007000000000000, .hexadecimal));
pub const BGFX_STATE_POINT_SIZE_SHIFT = @as(c_int, 52);
pub const BGFX_STATE_POINT_SIZE_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00f0000000000000, .hexadecimal));
pub inline fn BGFX_STATE_POINT_SIZE(v: anytype) @TypeOf((@import("std").zig.c_translation.cast(u64, v) << BGFX_STATE_POINT_SIZE_SHIFT) & BGFX_STATE_POINT_SIZE_MASK) {
    return (@import("std").zig.c_translation.cast(u64, v) << BGFX_STATE_POINT_SIZE_SHIFT) & BGFX_STATE_POINT_SIZE_MASK;
}
pub const BGFX_STATE_MSAA = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0100000000000000, .hexadecimal));
pub const BGFX_STATE_LINEAA = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0200000000000000, .hexadecimal));
pub const BGFX_STATE_CONSERVATIVE_RASTER = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400000000000000, .hexadecimal));
pub const BGFX_STATE_NONE = UINT64_C(@as(c_int, 0x0000000000000000));
pub const BGFX_STATE_FRONT_CCW = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000008000000000, .hexadecimal));
pub const BGFX_STATE_BLEND_INDEPENDENT = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000400000000, .hexadecimal));
pub const BGFX_STATE_BLEND_ALPHA_TO_COVERAGE = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000800000000, .hexadecimal));
pub const BGFX_STATE_DEFAULT = (((((@as(c_int, 0) | BGFX_STATE_WRITE_RGB) | BGFX_STATE_WRITE_A) | BGFX_STATE_WRITE_Z) | BGFX_STATE_DEPTH_TEST_LESS) | BGFX_STATE_CULL_CW) | BGFX_STATE_MSAA;
pub const BGFX_STATE_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffffffffffff, .hexadecimal));
pub const BGFX_STATE_RESERVED_SHIFT = @as(c_int, 61);
pub const BGFX_STATE_RESERVED_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe000000000000000, .hexadecimal));
pub const BGFX_STENCIL_FUNC_REF_SHIFT = @as(c_int, 0);
pub const BGFX_STENCIL_FUNC_REF_MASK = UINT32_C(@as(c_int, 0x000000ff));
pub inline fn BGFX_STENCIL_FUNC_REF(v: anytype) @TypeOf((@import("std").zig.c_translation.cast(u32, v) << BGFX_STENCIL_FUNC_REF_SHIFT) & BGFX_STENCIL_FUNC_REF_MASK) {
    return (@import("std").zig.c_translation.cast(u32, v) << BGFX_STENCIL_FUNC_REF_SHIFT) & BGFX_STENCIL_FUNC_REF_MASK;
}
pub const BGFX_STENCIL_FUNC_RMASK_SHIFT = @as(c_int, 8);
pub const BGFX_STENCIL_FUNC_RMASK_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000ff00, .hexadecimal));
pub inline fn BGFX_STENCIL_FUNC_RMASK(v: anytype) @TypeOf((@import("std").zig.c_translation.cast(u32, v) << BGFX_STENCIL_FUNC_RMASK_SHIFT) & BGFX_STENCIL_FUNC_RMASK_MASK) {
    return (@import("std").zig.c_translation.cast(u32, v) << BGFX_STENCIL_FUNC_RMASK_SHIFT) & BGFX_STENCIL_FUNC_RMASK_MASK;
}
pub const BGFX_STENCIL_NONE = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_STENCIL_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal));
pub const BGFX_STENCIL_DEFAULT = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_STENCIL_TEST_LESS = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hexadecimal));
pub const BGFX_STENCIL_TEST_LEQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hexadecimal));
pub const BGFX_STENCIL_TEST_EQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00030000, .hexadecimal));
pub const BGFX_STENCIL_TEST_GEQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hexadecimal));
pub const BGFX_STENCIL_TEST_GREATER = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00050000, .hexadecimal));
pub const BGFX_STENCIL_TEST_NOTEQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060000, .hexadecimal));
pub const BGFX_STENCIL_TEST_NEVER = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00070000, .hexadecimal));
pub const BGFX_STENCIL_TEST_ALWAYS = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hexadecimal));
pub const BGFX_STENCIL_TEST_SHIFT = @as(c_int, 16);
pub const BGFX_STENCIL_TEST_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000f0000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_ZERO = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_STENCIL_OP_FAIL_S_KEEP = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_REPLACE = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_INCR = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00300000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_INCRSAT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00400000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_DECR = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00500000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_DECRSAT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00600000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_INVERT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00700000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_S_SHIFT = @as(c_int, 20);
pub const BGFX_STENCIL_OP_FAIL_S_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00f00000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_ZERO = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_STENCIL_OP_FAIL_Z_KEEP = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_REPLACE = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_INCR = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x03000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_INCRSAT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_DECR = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x05000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_DECRSAT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_INVERT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x07000000, .hexadecimal));
pub const BGFX_STENCIL_OP_FAIL_Z_SHIFT = @as(c_int, 24);
pub const BGFX_STENCIL_OP_FAIL_Z_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0f000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_ZERO = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_STENCIL_OP_PASS_Z_KEEP = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_REPLACE = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_INCR = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x30000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_INCRSAT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_DECR = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x50000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_DECRSAT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x60000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_INVERT = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x70000000, .hexadecimal));
pub const BGFX_STENCIL_OP_PASS_Z_SHIFT = @as(c_int, 28);
pub const BGFX_STENCIL_OP_PASS_Z_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal));
pub const BGFX_CLEAR_NONE = UINT16_C(@as(c_int, 0x0000));
pub const BGFX_CLEAR_COLOR = UINT16_C(@as(c_int, 0x0001));
pub const BGFX_CLEAR_DEPTH = UINT16_C(@as(c_int, 0x0002));
pub const BGFX_CLEAR_STENCIL = UINT16_C(@as(c_int, 0x0004));
pub const BGFX_CLEAR_DISCARD_COLOR_0 = UINT16_C(@as(c_int, 0x0008));
pub const BGFX_CLEAR_DISCARD_COLOR_1 = UINT16_C(@as(c_int, 0x0010));
pub const BGFX_CLEAR_DISCARD_COLOR_2 = UINT16_C(@as(c_int, 0x0020));
pub const BGFX_CLEAR_DISCARD_COLOR_3 = UINT16_C(@as(c_int, 0x0040));
pub const BGFX_CLEAR_DISCARD_COLOR_4 = UINT16_C(@as(c_int, 0x0080));
pub const BGFX_CLEAR_DISCARD_COLOR_5 = UINT16_C(@as(c_int, 0x0100));
pub const BGFX_CLEAR_DISCARD_COLOR_6 = UINT16_C(@as(c_int, 0x0200));
pub const BGFX_CLEAR_DISCARD_COLOR_7 = UINT16_C(@as(c_int, 0x0400));
pub const BGFX_CLEAR_DISCARD_DEPTH = UINT16_C(@as(c_int, 0x0800));
pub const BGFX_CLEAR_DISCARD_STENCIL = UINT16_C(@as(c_int, 0x1000));
pub const BGFX_CLEAR_DISCARD_COLOR_MASK = (((((((@as(c_int, 0) | BGFX_CLEAR_DISCARD_COLOR_0) | BGFX_CLEAR_DISCARD_COLOR_1) | BGFX_CLEAR_DISCARD_COLOR_2) | BGFX_CLEAR_DISCARD_COLOR_3) | BGFX_CLEAR_DISCARD_COLOR_4) | BGFX_CLEAR_DISCARD_COLOR_5) | BGFX_CLEAR_DISCARD_COLOR_6) | BGFX_CLEAR_DISCARD_COLOR_7;
pub const BGFX_CLEAR_DISCARD_MASK = ((@as(c_int, 0) | BGFX_CLEAR_DISCARD_COLOR_MASK) | BGFX_CLEAR_DISCARD_DEPTH) | BGFX_CLEAR_DISCARD_STENCIL;
pub const BGFX_DISCARD_NONE = UINT8_C(@as(c_int, 0x00));
pub const BGFX_DISCARD_BINDINGS = UINT8_C(@as(c_int, 0x01));
pub const BGFX_DISCARD_INDEX_BUFFER = UINT8_C(@as(c_int, 0x02));
pub const BGFX_DISCARD_INSTANCE_DATA = UINT8_C(@as(c_int, 0x04));
pub const BGFX_DISCARD_STATE = UINT8_C(@as(c_int, 0x08));
pub const BGFX_DISCARD_TRANSFORM = UINT8_C(@as(c_int, 0x10));
pub const BGFX_DISCARD_VERTEX_STREAMS = UINT8_C(@as(c_int, 0x20));
pub const BGFX_DISCARD_ALL = UINT8_C(@as(c_int, 0xff));
pub const BGFX_DEBUG_NONE = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_DEBUG_WIREFRAME = UINT32_C(@as(c_int, 0x00000001));
pub const BGFX_DEBUG_IFH = UINT32_C(@as(c_int, 0x00000002));
pub const BGFX_DEBUG_STATS = UINT32_C(@as(c_int, 0x00000004));
pub const BGFX_DEBUG_TEXT = UINT32_C(@as(c_int, 0x00000008));
pub const BGFX_DEBUG_PROFILER = UINT32_C(@as(c_int, 0x00000010));
pub const BGFX_BUFFER_COMPUTE_FORMAT_8X1 = UINT16_C(@as(c_int, 0x0001));
pub const BGFX_BUFFER_COMPUTE_FORMAT_8X2 = UINT16_C(@as(c_int, 0x0002));
pub const BGFX_BUFFER_COMPUTE_FORMAT_8X4 = UINT16_C(@as(c_int, 0x0003));
pub const BGFX_BUFFER_COMPUTE_FORMAT_16X1 = UINT16_C(@as(c_int, 0x0004));
pub const BGFX_BUFFER_COMPUTE_FORMAT_16X2 = UINT16_C(@as(c_int, 0x0005));
pub const BGFX_BUFFER_COMPUTE_FORMAT_16X4 = UINT16_C(@as(c_int, 0x0006));
pub const BGFX_BUFFER_COMPUTE_FORMAT_32X1 = UINT16_C(@as(c_int, 0x0007));
pub const BGFX_BUFFER_COMPUTE_FORMAT_32X2 = UINT16_C(@as(c_int, 0x0008));
pub const BGFX_BUFFER_COMPUTE_FORMAT_32X4 = UINT16_C(@as(c_int, 0x0009));
pub const BGFX_BUFFER_COMPUTE_FORMAT_SHIFT = @as(c_int, 0);
pub const BGFX_BUFFER_COMPUTE_FORMAT_MASK = UINT16_C(@as(c_int, 0x000f));
pub const BGFX_BUFFER_COMPUTE_TYPE_INT = UINT16_C(@as(c_int, 0x0010));
pub const BGFX_BUFFER_COMPUTE_TYPE_UINT = UINT16_C(@as(c_int, 0x0020));
pub const BGFX_BUFFER_COMPUTE_TYPE_FLOAT = UINT16_C(@as(c_int, 0x0030));
pub const BGFX_BUFFER_COMPUTE_TYPE_SHIFT = @as(c_int, 4);
pub const BGFX_BUFFER_COMPUTE_TYPE_MASK = UINT16_C(@as(c_int, 0x0030));
pub const BGFX_BUFFER_NONE = UINT16_C(@as(c_int, 0x0000));
pub const BGFX_BUFFER_COMPUTE_READ = UINT16_C(@as(c_int, 0x0100));
pub const BGFX_BUFFER_COMPUTE_WRITE = UINT16_C(@as(c_int, 0x0200));
pub const BGFX_BUFFER_DRAW_INDIRECT = UINT16_C(@as(c_int, 0x0400));
pub const BGFX_BUFFER_ALLOW_RESIZE = UINT16_C(@as(c_int, 0x0800));
pub const BGFX_BUFFER_INDEX32 = UINT16_C(@as(c_int, 0x1000));
pub const BGFX_BUFFER_COMPUTE_READ_WRITE = (@as(c_int, 0) | BGFX_BUFFER_COMPUTE_READ) | BGFX_BUFFER_COMPUTE_WRITE;
pub const BGFX_TEXTURE_NONE = UINT64_C(@as(c_int, 0x0000000000000000));
pub const BGFX_TEXTURE_MSAA_SAMPLE = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000800000000, .hexadecimal));
pub const BGFX_TEXTURE_RT = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000001000000000, .hexadecimal));
pub const BGFX_TEXTURE_COMPUTE_WRITE = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000100000000000, .hexadecimal));
pub const BGFX_TEXTURE_SRGB = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000200000000000, .hexadecimal));
pub const BGFX_TEXTURE_BLIT_DST = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000400000000000, .hexadecimal));
pub const BGFX_TEXTURE_READ_BACK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000800000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_MSAA_X2 = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000002000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_MSAA_X4 = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000003000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_MSAA_X8 = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000004000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_MSAA_X16 = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000005000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_MSAA_SHIFT = @as(c_int, 36);
pub const BGFX_TEXTURE_RT_MSAA_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000007000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_WRITE_ONLY = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000008000000000, .hexadecimal));
pub const BGFX_TEXTURE_RT_SHIFT = @as(c_int, 36);
pub const BGFX_TEXTURE_RT_MASK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000000f000000000, .hexadecimal));
pub const BGFX_SAMPLER_U_MIRROR = UINT32_C(@as(c_int, 0x00000001));
pub const BGFX_SAMPLER_U_CLAMP = UINT32_C(@as(c_int, 0x00000002));
pub const BGFX_SAMPLER_U_BORDER = UINT32_C(@as(c_int, 0x00000003));
pub const BGFX_SAMPLER_U_SHIFT = @as(c_int, 0);
pub const BGFX_SAMPLER_U_MASK = UINT32_C(@as(c_int, 0x00000003));
pub const BGFX_SAMPLER_V_MIRROR = UINT32_C(@as(c_int, 0x00000004));
pub const BGFX_SAMPLER_V_CLAMP = UINT32_C(@as(c_int, 0x00000008));
pub const BGFX_SAMPLER_V_BORDER = UINT32_C(@as(c_int, 0x0000000c));
pub const BGFX_SAMPLER_V_SHIFT = @as(c_int, 2);
pub const BGFX_SAMPLER_V_MASK = UINT32_C(@as(c_int, 0x0000000c));
pub const BGFX_SAMPLER_W_MIRROR = UINT32_C(@as(c_int, 0x00000010));
pub const BGFX_SAMPLER_W_CLAMP = UINT32_C(@as(c_int, 0x00000020));
pub const BGFX_SAMPLER_W_BORDER = UINT32_C(@as(c_int, 0x00000030));
pub const BGFX_SAMPLER_W_SHIFT = @as(c_int, 4);
pub const BGFX_SAMPLER_W_MASK = UINT32_C(@as(c_int, 0x00000030));
pub const BGFX_SAMPLER_MIN_POINT = UINT32_C(@as(c_int, 0x00000040));
pub const BGFX_SAMPLER_MIN_ANISOTROPIC = UINT32_C(@as(c_int, 0x00000080));
pub const BGFX_SAMPLER_MIN_SHIFT = @as(c_int, 6);
pub const BGFX_SAMPLER_MIN_MASK = UINT32_C(@as(c_int, 0x000000c0));
pub const BGFX_SAMPLER_MAG_POINT = UINT32_C(@as(c_int, 0x00000100));
pub const BGFX_SAMPLER_MAG_ANISOTROPIC = UINT32_C(@as(c_int, 0x00000200));
pub const BGFX_SAMPLER_MAG_SHIFT = @as(c_int, 8);
pub const BGFX_SAMPLER_MAG_MASK = UINT32_C(@as(c_int, 0x00000300));
pub const BGFX_SAMPLER_MIP_POINT = UINT32_C(@as(c_int, 0x00000400));
pub const BGFX_SAMPLER_MIP_SHIFT = @as(c_int, 10);
pub const BGFX_SAMPLER_MIP_MASK = UINT32_C(@as(c_int, 0x00000400));
pub const BGFX_SAMPLER_COMPARE_LESS = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_LEQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_EQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00030000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_GEQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_GREATER = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00050000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_NOTEQUAL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_NEVER = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00070000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_ALWAYS = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hexadecimal));
pub const BGFX_SAMPLER_COMPARE_SHIFT = @as(c_int, 16);
pub const BGFX_SAMPLER_COMPARE_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x000f0000, .hexadecimal));
pub const BGFX_SAMPLER_BORDER_COLOR_SHIFT = @as(c_int, 24);
pub const BGFX_SAMPLER_BORDER_COLOR_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0f000000, .hexadecimal));
pub inline fn BGFX_SAMPLER_BORDER_COLOR(v: anytype) @TypeOf((@import("std").zig.c_translation.cast(u32, v) << BGFX_SAMPLER_BORDER_COLOR_SHIFT) & BGFX_SAMPLER_BORDER_COLOR_MASK) {
    return (@import("std").zig.c_translation.cast(u32, v) << BGFX_SAMPLER_BORDER_COLOR_SHIFT) & BGFX_SAMPLER_BORDER_COLOR_MASK;
}
pub const BGFX_SAMPLER_RESERVED_SHIFT = @as(c_int, 28);
pub const BGFX_SAMPLER_RESERVED_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xf0000000, .hexadecimal));
pub const BGFX_SAMPLER_NONE = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_SAMPLER_SAMPLE_STENCIL = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hexadecimal));
pub const BGFX_SAMPLER_POINT = ((@as(c_int, 0) | BGFX_SAMPLER_MIN_POINT) | BGFX_SAMPLER_MAG_POINT) | BGFX_SAMPLER_MIP_POINT;
pub const BGFX_SAMPLER_UVW_MIRROR = ((@as(c_int, 0) | BGFX_SAMPLER_U_MIRROR) | BGFX_SAMPLER_V_MIRROR) | BGFX_SAMPLER_W_MIRROR;
pub const BGFX_SAMPLER_UVW_CLAMP = ((@as(c_int, 0) | BGFX_SAMPLER_U_CLAMP) | BGFX_SAMPLER_V_CLAMP) | BGFX_SAMPLER_W_CLAMP;
pub const BGFX_SAMPLER_UVW_BORDER = ((@as(c_int, 0) | BGFX_SAMPLER_U_BORDER) | BGFX_SAMPLER_V_BORDER) | BGFX_SAMPLER_W_BORDER;
pub const BGFX_SAMPLER_BITS_MASK = ((((((@as(c_int, 0) | BGFX_SAMPLER_U_MASK) | BGFX_SAMPLER_V_MASK) | BGFX_SAMPLER_W_MASK) | BGFX_SAMPLER_MIN_MASK) | BGFX_SAMPLER_MAG_MASK) | BGFX_SAMPLER_MIP_MASK) | BGFX_SAMPLER_COMPARE_MASK;
pub const BGFX_RESET_MSAA_X2 = UINT32_C(@as(c_int, 0x00000010));
pub const BGFX_RESET_MSAA_X4 = UINT32_C(@as(c_int, 0x00000020));
pub const BGFX_RESET_MSAA_X8 = UINT32_C(@as(c_int, 0x00000030));
pub const BGFX_RESET_MSAA_X16 = UINT32_C(@as(c_int, 0x00000040));
pub const BGFX_RESET_MSAA_SHIFT = @as(c_int, 4);
pub const BGFX_RESET_MSAA_MASK = UINT32_C(@as(c_int, 0x00000070));
pub const BGFX_RESET_NONE = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_RESET_FULLSCREEN = UINT32_C(@as(c_int, 0x00000001));
pub const BGFX_RESET_VSYNC = UINT32_C(@as(c_int, 0x00000080));
pub const BGFX_RESET_MAXANISOTROPY = UINT32_C(@as(c_int, 0x00000100));
pub const BGFX_RESET_CAPTURE = UINT32_C(@as(c_int, 0x00000200));
pub const BGFX_RESET_FLUSH_AFTER_RENDER = UINT32_C(@as(c_int, 0x00002000));
pub const BGFX_RESET_FLIP_AFTER_RENDER = UINT32_C(@as(c_int, 0x00004000));
pub const BGFX_RESET_SRGB_BACKBUFFER = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hexadecimal));
pub const BGFX_RESET_HDR10 = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hexadecimal));
pub const BGFX_RESET_HIDPI = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hexadecimal));
pub const BGFX_RESET_DEPTH_CLAMP = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hexadecimal));
pub const BGFX_RESET_SUSPEND = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hexadecimal));
pub const BGFX_RESET_FULLSCREEN_SHIFT = @as(c_int, 0);
pub const BGFX_RESET_FULLSCREEN_MASK = UINT32_C(@as(c_int, 0x00000001));
pub const BGFX_RESET_RESERVED_SHIFT = @as(c_int, 31);
pub const BGFX_RESET_RESERVED_MASK = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal));
pub const BGFX_CAPS_ALPHA_TO_COVERAGE = UINT64_C(@as(c_int, 0x0000000000000001));
pub const BGFX_CAPS_BLEND_INDEPENDENT = UINT64_C(@as(c_int, 0x0000000000000002));
pub const BGFX_CAPS_COMPUTE = UINT64_C(@as(c_int, 0x0000000000000004));
pub const BGFX_CAPS_CONSERVATIVE_RASTER = UINT64_C(@as(c_int, 0x0000000000000008));
pub const BGFX_CAPS_DRAW_INDIRECT = UINT64_C(@as(c_int, 0x0000000000000010));
pub const BGFX_CAPS_FRAGMENT_DEPTH = UINT64_C(@as(c_int, 0x0000000000000020));
pub const BGFX_CAPS_FRAGMENT_ORDERING = UINT64_C(@as(c_int, 0x0000000000000040));
pub const BGFX_CAPS_GRAPHICS_DEBUGGER = UINT64_C(@as(c_int, 0x0000000000000080));
pub const BGFX_CAPS_HDR10 = UINT64_C(@as(c_int, 0x0000000000000100));
pub const BGFX_CAPS_HIDPI = UINT64_C(@as(c_int, 0x0000000000000200));
pub const BGFX_CAPS_IMAGE_RW = UINT64_C(@as(c_int, 0x0000000000000400));
pub const BGFX_CAPS_INDEX32 = UINT64_C(@as(c_int, 0x0000000000000800));
pub const BGFX_CAPS_INSTANCING = UINT64_C(@as(c_int, 0x0000000000001000));
pub const BGFX_CAPS_OCCLUSION_QUERY = UINT64_C(@as(c_int, 0x0000000000002000));
pub const BGFX_CAPS_RENDERER_MULTITHREADED = UINT64_C(@as(c_int, 0x0000000000004000));
pub const BGFX_CAPS_SWAP_CHAIN = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000008000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_2D_ARRAY = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000010000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_3D = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000020000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_BLIT = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000040000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_COMPARE_RESERVED = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000080000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_COMPARE_LEQUAL = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000100000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_CUBE_ARRAY = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000200000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_DIRECT_ACCESS = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000400000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_READ_BACK = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000000800000, .hexadecimal));
pub const BGFX_CAPS_VERTEX_ATTRIB_HALF = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000001000000, .hexadecimal));
pub const BGFX_CAPS_VERTEX_ATTRIB_UINT10 = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000002000000, .hexadecimal));
pub const BGFX_CAPS_VERTEX_ID = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000004000000, .hexadecimal));
pub const BGFX_CAPS_VIEWPORT_LAYER_ARRAY = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000000008000000, .hexadecimal));
pub const BGFX_CAPS_TEXTURE_COMPARE_ALL = (@as(c_int, 0) | BGFX_CAPS_TEXTURE_COMPARE_RESERVED) | BGFX_CAPS_TEXTURE_COMPARE_LEQUAL;
pub const BGFX_CAPS_FORMAT_TEXTURE_NONE = UINT32_C(@as(c_int, 0x00000000));
pub const BGFX_CAPS_FORMAT_TEXTURE_2D = UINT32_C(@as(c_int, 0x00000001));
pub const BGFX_CAPS_FORMAT_TEXTURE_2D_SRGB = UINT32_C(@as(c_int, 0x00000002));
pub const BGFX_CAPS_FORMAT_TEXTURE_2D_EMULATED = UINT32_C(@as(c_int, 0x00000004));
pub const BGFX_CAPS_FORMAT_TEXTURE_3D = UINT32_C(@as(c_int, 0x00000008));
pub const BGFX_CAPS_FORMAT_TEXTURE_3D_SRGB = UINT32_C(@as(c_int, 0x00000010));
pub const BGFX_CAPS_FORMAT_TEXTURE_3D_EMULATED = UINT32_C(@as(c_int, 0x00000020));
pub const BGFX_CAPS_FORMAT_TEXTURE_CUBE = UINT32_C(@as(c_int, 0x00000040));
pub const BGFX_CAPS_FORMAT_TEXTURE_CUBE_SRGB = UINT32_C(@as(c_int, 0x00000080));
pub const BGFX_CAPS_FORMAT_TEXTURE_CUBE_EMULATED = UINT32_C(@as(c_int, 0x00000100));
pub const BGFX_CAPS_FORMAT_TEXTURE_VERTEX = UINT32_C(@as(c_int, 0x00000200));
pub const BGFX_CAPS_FORMAT_TEXTURE_IMAGE_READ = UINT32_C(@as(c_int, 0x00000400));
pub const BGFX_CAPS_FORMAT_TEXTURE_IMAGE_WRITE = UINT32_C(@as(c_int, 0x00000800));
pub const BGFX_CAPS_FORMAT_TEXTURE_FRAMEBUFFER = UINT32_C(@as(c_int, 0x00001000));
pub const BGFX_CAPS_FORMAT_TEXTURE_FRAMEBUFFER_MSAA = UINT32_C(@as(c_int, 0x00002000));
pub const BGFX_CAPS_FORMAT_TEXTURE_MSAA = UINT32_C(@as(c_int, 0x00004000));
pub const BGFX_CAPS_FORMAT_TEXTURE_MIP_AUTOGEN = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hexadecimal));
pub const BGFX_RESOLVE_NONE = UINT8_C(@as(c_int, 0x00));
pub const BGFX_RESOLVE_AUTO_GEN_MIPS = UINT8_C(@as(c_int, 0x01));
pub const BGFX_PCI_ID_NONE = UINT16_C(@as(c_int, 0x0000));
pub const BGFX_PCI_ID_SOFTWARE_RASTERIZER = UINT16_C(@as(c_int, 0x0001));
pub const BGFX_PCI_ID_AMD = UINT16_C(@as(c_int, 0x1002));
pub const BGFX_PCI_ID_APPLE = UINT16_C(@as(c_int, 0x106b));
pub const BGFX_PCI_ID_INTEL = UINT16_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8086, .hexadecimal));
pub const BGFX_PCI_ID_NVIDIA = UINT16_C(@as(c_int, 0x10de));
pub const BGFX_PCI_ID_MICROSOFT = UINT16_C(@as(c_int, 0x1414));
pub const BGFX_CUBE_MAP_POSITIVE_X = UINT8_C(@as(c_int, 0x00));
pub const BGFX_CUBE_MAP_NEGATIVE_X = UINT8_C(@as(c_int, 0x01));
pub const BGFX_CUBE_MAP_POSITIVE_Y = UINT8_C(@as(c_int, 0x02));
pub const BGFX_CUBE_MAP_NEGATIVE_Y = UINT8_C(@as(c_int, 0x03));
pub const BGFX_CUBE_MAP_POSITIVE_Z = UINT8_C(@as(c_int, 0x04));
pub const BGFX_CUBE_MAP_NEGATIVE_Z = UINT8_C(@as(c_int, 0x05));
pub inline fn BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB: anytype, _dstRGB: anytype, _srcA: anytype, _dstA: anytype) @TypeOf((UINT64_C(@as(c_int, 0)) | (@import("std").zig.c_translation.cast(u64, _srcRGB) | (@import("std").zig.c_translation.cast(u64, _dstRGB) << @as(c_int, 4)))) | ((@import("std").zig.c_translation.cast(u64, _srcA) | (@import("std").zig.c_translation.cast(u64, _dstA) << @as(c_int, 4))) << @as(c_int, 8))) {
    return (UINT64_C(@as(c_int, 0)) | (@import("std").zig.c_translation.cast(u64, _srcRGB) | (@import("std").zig.c_translation.cast(u64, _dstRGB) << @as(c_int, 4)))) | ((@import("std").zig.c_translation.cast(u64, _srcA) | (@import("std").zig.c_translation.cast(u64, _dstA) << @as(c_int, 4))) << @as(c_int, 8));
}
pub inline fn BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB: anytype, _equationA: anytype) @TypeOf(@import("std").zig.c_translation.cast(u64, _equationRGB) | (@import("std").zig.c_translation.cast(u64, _equationA) << @as(c_int, 3))) {
    return @import("std").zig.c_translation.cast(u64, _equationRGB) | (@import("std").zig.c_translation.cast(u64, _equationA) << @as(c_int, 3));
}
pub inline fn BGFX_STATE_BLEND_FUNC(_src: anytype, _dst: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_SEPARATE(_src, _dst, _src, _dst)) {
    return BGFX_STATE_BLEND_FUNC_SEPARATE(_src, _dst, _src, _dst);
}
pub inline fn BGFX_STATE_BLEND_EQUATION(_equation: anytype) @TypeOf(BGFX_STATE_BLEND_EQUATION_SEPARATE(_equation, _equation)) {
    return BGFX_STATE_BLEND_EQUATION_SEPARATE(_equation, _equation);
}
pub const BGFX_STATE_BLEND_ADD = @as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE);
pub const BGFX_STATE_BLEND_ALPHA = @as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_SRC_ALPHA, BGFX_STATE_BLEND_INV_SRC_ALPHA);
pub const BGFX_STATE_BLEND_DARKEN = (@as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE)) | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_MIN);
pub const BGFX_STATE_BLEND_LIGHTEN = (@as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE)) | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_MAX);
pub const BGFX_STATE_BLEND_MULTIPLY = @as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_DST_COLOR, BGFX_STATE_BLEND_ZERO);
pub const BGFX_STATE_BLEND_NORMAL = @as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_INV_SRC_ALPHA);
pub const BGFX_STATE_BLEND_SCREEN = @as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_INV_SRC_COLOR);
pub const BGFX_STATE_BLEND_LINEAR_BURN = (@as(c_int, 0) | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_DST_COLOR, BGFX_STATE_BLEND_INV_DST_COLOR)) | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_SUB);
pub inline fn BGFX_STATE_BLEND_FUNC_RT_x(_src: anytype, _dst: anytype) @TypeOf(@as(c_int, 0) | (@import("std").zig.c_translation.cast(u32, _src >> BGFX_STATE_BLEND_SHIFT) | (@import("std").zig.c_translation.cast(u32, _dst >> BGFX_STATE_BLEND_SHIFT) << @as(c_int, 4)))) {
    return @as(c_int, 0) | (@import("std").zig.c_translation.cast(u32, _src >> BGFX_STATE_BLEND_SHIFT) | (@import("std").zig.c_translation.cast(u32, _dst >> BGFX_STATE_BLEND_SHIFT) << @as(c_int, 4)));
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_xE(_src: anytype, _dst: anytype, _equation: anytype) @TypeOf((@as(c_int, 0) | BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)) | (@import("std").zig.c_translation.cast(u32, _equation >> BGFX_STATE_BLEND_EQUATION_SHIFT) << @as(c_int, 8))) {
    return (@as(c_int, 0) | BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)) | (@import("std").zig.c_translation.cast(u32, _equation >> BGFX_STATE_BLEND_EQUATION_SHIFT) << @as(c_int, 8));
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_1(_src: anytype, _dst: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << @as(c_int, 0)) {
    return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << @as(c_int, 0);
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_2(_src: anytype, _dst: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << @as(c_int, 11)) {
    return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << @as(c_int, 11);
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_3(_src: anytype, _dst: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << @as(c_int, 22)) {
    return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << @as(c_int, 22);
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_1E(_src: anytype, _dst: anytype, _equation: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << @as(c_int, 0)) {
    return BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << @as(c_int, 0);
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_2E(_src: anytype, _dst: anytype, _equation: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << @as(c_int, 11)) {
    return BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << @as(c_int, 11);
}
pub inline fn BGFX_STATE_BLEND_FUNC_RT_3E(_src: anytype, _dst: anytype, _equation: anytype) @TypeOf(BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << @as(c_int, 22)) {
    return BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << @as(c_int, 22);
}
pub inline fn BGFX_HANDLE_IS_VALID(h: anytype) @TypeOf(h.idx != UINT16_MAX) {
    return h.idx != UINT16_MAX;
}
pub const tagLC_ID = struct_tagLC_ID;
pub const lconv = struct_lconv;
pub const __lc_time_data = struct___lc_time_data;
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const _div_t = struct__div_t;
pub const _ldiv_t = struct__ldiv_t;
pub const _heapinfo = struct__heapinfo;
pub const bgfx_fatal = enum_bgfx_fatal;
pub const bgfx_renderer_type = enum_bgfx_renderer_type;
pub const bgfx_access = enum_bgfx_access;
pub const bgfx_attrib = enum_bgfx_attrib;
pub const bgfx_attrib_type = enum_bgfx_attrib_type;
pub const bgfx_texture_format = enum_bgfx_texture_format;
pub const bgfx_uniform_type = enum_bgfx_uniform_type;
pub const bgfx_backbuffer_ratio = enum_bgfx_backbuffer_ratio;
pub const bgfx_occlusion_query_result = enum_bgfx_occlusion_query_result;
pub const bgfx_topology = enum_bgfx_topology;
pub const bgfx_topology_sort = enum_bgfx_topology_sort;
pub const bgfx_view_mode = enum_bgfx_view_mode;
pub const bgfx_allocator_vtbl_s = struct_bgfx_allocator_vtbl_s;
pub const bgfx_allocator_interface_s = struct_bgfx_allocator_interface_s;
pub const bgfx_texture_handle_s = struct_bgfx_texture_handle_s;
pub const bgfx_attachment_s = struct_bgfx_attachment_s;
pub const bgfx_vertex_layout_s = struct_bgfx_vertex_layout_s;
pub const bgfx_platform_data_s = struct_bgfx_platform_data_s;
pub const bgfx_resolution_s = struct_bgfx_resolution_s;
pub const bgfx_init_limits_s = struct_bgfx_init_limits_s;
pub const bgfx_callback_vtbl_s = struct_bgfx_callback_vtbl_s;
pub const bgfx_callback_interface_s = struct_bgfx_callback_interface_s;
pub const bgfx_init_s = struct_bgfx_init_s;
pub const bgfx_caps_gpu_s = struct_bgfx_caps_gpu_s;
pub const bgfx_caps_limits_s = struct_bgfx_caps_limits_s;
pub const bgfx_caps_s = struct_bgfx_caps_s;
pub const bgfx_view_stats_s = struct_bgfx_view_stats_s;
pub const bgfx_encoder_stats_s = struct_bgfx_encoder_stats_s;
pub const bgfx_stats_s = struct_bgfx_stats_s;
pub const bgfx_memory_s = struct_bgfx_memory_s;
pub const bgfx_index_buffer_handle_s = struct_bgfx_index_buffer_handle_s;
pub const bgfx_vertex_layout_handle_s = struct_bgfx_vertex_layout_handle_s;
pub const bgfx_vertex_buffer_handle_s = struct_bgfx_vertex_buffer_handle_s;
pub const bgfx_dynamic_index_buffer_handle_s = struct_bgfx_dynamic_index_buffer_handle_s;
pub const bgfx_dynamic_vertex_buffer_handle_s = struct_bgfx_dynamic_vertex_buffer_handle_s;
pub const bgfx_transient_index_buffer_s = struct_bgfx_transient_index_buffer_s;
pub const bgfx_transient_vertex_buffer_s = struct_bgfx_transient_vertex_buffer_s;
pub const bgfx_instance_data_buffer_s = struct_bgfx_instance_data_buffer_s;
pub const bgfx_indirect_buffer_handle_s = struct_bgfx_indirect_buffer_handle_s;
pub const bgfx_shader_handle_s = struct_bgfx_shader_handle_s;
pub const bgfx_uniform_handle_s = struct_bgfx_uniform_handle_s;
pub const bgfx_program_handle_s = struct_bgfx_program_handle_s;
pub const bgfx_texture_info_s = struct_bgfx_texture_info_s;
pub const bgfx_frame_buffer_handle_s = struct_bgfx_frame_buffer_handle_s;
pub const bgfx_uniform_info_s = struct_bgfx_uniform_info_s;
pub const bgfx_occlusion_query_handle_s = struct_bgfx_occlusion_query_handle_s;
pub const bgfx_encoder_s = struct_bgfx_encoder_s;
pub const bgfx_transform_s = struct_bgfx_transform_s;
pub const bgfx_internal_data_s = struct_bgfx_internal_data_s;
pub const bgfx_interface_vtbl = struct_bgfx_interface_vtbl;
pub const bgfx_function_id = enum_bgfx_function_id;
