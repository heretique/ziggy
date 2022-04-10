const std = @import("std");

const bx = @import("build_bx.zig");
const bimg = @import("build_bimg.zig");

const bgfx_path = "3rdparty/bgfx/";

pub fn link(exe: *std.build.LibExeObjStep) void {
    const lib = buildLibrary(exe);
    addBgfxIncludes(exe);
    exe.linkLibrary(lib);
}

fn buildLibrary(exe: *std.build.LibExeObjStep) *std.build.LibExeObjStep {
    const cxx_options = [_][]const u8{
        "-fno-strict-aliasing",
        "-fno-exceptions",
        "-fno-rtti",
        "-ffast-math",
        "-DBX_CONFIG_DEBUG",
        "-DBGFX_CONFIG_USE_TINYSTL=0",
    };

    const bgfx_lib = exe.builder.addStaticLibrary("bgfx", null);
    bgfx_lib.addIncludeDir(bgfx_path ++ "include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/dxsdk/include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/khronos/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "src/");
    bgfx_lib.addCSourceFile(bgfx_path ++ "src/amalgamated.cpp", &cxx_options);
    bgfx_lib.want_lto = false;
    bgfx_lib.linkSystemLibrary("c");
    bgfx_lib.linkSystemLibrary("c++");
    bgfx_lib.setTarget(exe.target);
    bgfx_lib.setBuildMode(exe.build_mode);
    bx.link(bgfx_lib);
    bimg.link(bgfx_lib);
    bgfx_lib.install();

    return bgfx_lib;
}

fn addBgfxIncludes(exe: *std.build.LibExeObjStep) void {
    exe.addIncludeDir(thisDir() ++ "/" ++ bgfx_path ++ "include/");
    exe.addPackagePath("bgfx", thisDir() ++ "/" ++ bgfx_path ++ "bindings/zig/bgfx.zig");
}

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}
