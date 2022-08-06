const std = @import("std");

const bx_path = "3rdparty/bx/";

pub fn link(exe: *std.build.LibExeObjStep) void {
    const lib = buildLibrary(exe);
    addBxIncludes(exe);
    exe.linkLibrary(lib);
}

fn buildLibrary(exe: *std.build.LibExeObjStep) *std.build.LibExeObjStep {
    const cxx_options = [_][]const u8{
        "-fno-strict-aliasing",
        "-fno-exceptions",
        "-fno-rtti",
        "-ffast-math",
        "-DBX_CONFIG_DEBUG",
    };

    const bx_lib = exe.builder.addStaticLibrary("bx", null);
    bx_lib.setTarget(exe.target);
    bx_lib.setBuildMode(exe.build_mode);

    addBxIncludes(bx_lib);
    bx_lib.addIncludeDir(bx_path ++ "3rdparty/");
    if (bx_lib.target.isDarwin()) {
        bx_lib.linkFramework("CoreFoundation");
        bx_lib.linkFramework("Foundation");
    }
    bx_lib.addCSourceFile(bx_path ++ "src/amalgamated.cpp", &cxx_options);
    bx_lib.want_lto = false;
    bx_lib.linkSystemLibrary("c");
    bx_lib.linkSystemLibrary("c++");
    bx_lib.install();
    return bx_lib;
}

fn addBxIncludes(exe: *std.build.LibExeObjStep) void {
    var compat_include: []const u8 = "";

    if (exe.target.isWindows()) {
        compat_include = thisDir() ++ "/" ++ bx_path ++ "include/compat/mingw/";
    } else if (exe.target.isDarwin()) {
        compat_include = thisDir() ++ "/" ++ bx_path ++ "include/compat/osx/";
    }

    exe.addIncludeDir(compat_include);
    exe.addIncludeDir(thisDir() ++ "/" ++ bx_path ++ "include/");
}

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}
