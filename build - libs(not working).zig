const std = @import("std");
const builtin = @import("builtin");
const sdl_sdk = @import("3rdparty/SDL.zig/Sdk.zig");

const LibExeObjStep = std.build.LibExeObjStep;
const Builder = std.build.Builder;
const CrossTarget = std.zig.CrossTarget;
const Pkg = std.build.Pkg;

pub fn build(b: *Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const cxx_options = [_][]const u8{
        "-fno-strict-aliasing",
        "-fno-exceptions",
        "-fno-rtti",
        "-ffast-math",
    };

    // BX
    const bx_path = "3rdparty/bx/";
    const bx_cxx_options = [_][]const u8{"-DBX_CONFIG_DEBUG"} ++ cxx_options;
    const bx_lib = b.addStaticLibrary("bx", null);
    bx_lib.addIncludeDir(bx_path ++ "include/");
    bx_lib.addIncludeDir(bx_path ++ "3rdparty/");

    var compat_include: []const u8 = "";

    if (target.isWindows()) {
        compat_include = bx_path ++ "include/compat/mingw/";
    } else if (target.isDarwin()) {
        compat_include = bx_path ++ "include/compat/osx/";
    }
    bx_lib.addIncludeDir(compat_include);
    bx_lib.force_pic = true;
    bx_lib.addCSourceFile(bx_path ++ "src/amalgamated.cpp", &bx_cxx_options);
    bx_lib.linkSystemLibrary("c");
    bx_lib.linkSystemLibrary("c++");
    bx_lib.setTarget(target);
    bx_lib.setBuildMode(mode);
    bx_lib.install();

    // BIMG
    const bimg_path = "3rdparty/bimg/";
    const bimg_lib = b.addStaticLibrary("bimg", null);
    bimg_lib.addIncludeDir(bimg_path ++ "include/");
    bimg_lib.addIncludeDir(bimg_path ++ "3rdparty/");
    bimg_lib.addIncludeDir(bimg_path ++ "3rdparty/astc-codec/");
    bimg_lib.addIncludeDir(bimg_path ++ "3rdparty/astc-codec/include/");
    bimg_lib.force_pic = true;
    bimg_lib.addCSourceFiles(&.{
        bimg_path ++ "3rdparty/astc-codec/src/decoder/astc_file.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/codec.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/endpoint_codec.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/footprint.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/integer_sequence_codec.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/intermediate_astc_block.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/logical_astc_block.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/partition.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/physical_astc_block.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/quantization.cc",
        bimg_path ++ "3rdparty/astc-codec/src/decoder/weight_infill.cc",
    }, &cxx_options);
    bimg_lib.linkSystemLibrary("c");
    bimg_lib.linkSystemLibrary("c++");
    bimg_lib.setTarget(target);
    bimg_lib.setBuildMode(mode);
    bimg_lib.install();

    // BGFX
    const bgfx_path = "3rdparty/bgfx/";
    const bgfx_lib = b.addStaticLibrary("bgfx", null);
    bgfx_lib.addIncludeDir(bx_path ++ "include/");
    bgfx_lib.addIncludeDir(compat_include);
    bgfx_lib.addIncludeDir(bimg_path ++ "include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/dxsdk/include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/khronos/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "src/");
    bgfx_lib.force_pic = true;
    bgfx_lib.addCSourceFile(bgfx_path ++ "src/amalgamated.cpp", &bx_cxx_options);
    bgfx_lib.linkSystemLibrary("c");
    bgfx_lib.linkSystemLibrary("c++");
    bgfx_lib.setTarget(target);
    bgfx_lib.setBuildMode(mode);
    bgfx_lib.install();

    // EXE
    const exe = b.addExecutable("ziggy", "src/main.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);
    // Create a new instance of the SDL2 Sdk
    const sdl = sdl_sdk.init(b);
    sdl.link(exe, .dynamic); // link SDL2 as a shared library
    exe.addPackage(sdl.getNativePackage("sdl2"));
    exe.linkLibrary(bx_lib);
    exe.linkLibrary(bimg_lib);
    exe.linkLibrary(bgfx_lib);
    exe.addPackagePath("bgfx", "3rdparty/bgfx/bindings/zig/bgfx.zig");
    exe.addIncludeDir("src");
    exe.addIncludeDir("c:/Users/cata/scoop/apps/sdl2/current/include/");

    // SDL2
    // exe.linkSystemLibrary("c");
    // exe.linkSystemLibrary("c++");
    // exe.addLibPath("c:/Users/cata/scoop/apps/sdl2/current/lib/");
    // exe.linkSystemLibrary("SDL2");
    // exe.linkLibrary(bx_lib);
    // exe.linkLibrary(bimg_lib);
    // exe.linkLibrary(bgfx_lib);
    // exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const exe_tests = b.addTest("src/main.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
}
