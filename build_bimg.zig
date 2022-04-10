const std = @import("std");
const bx = @import("build_bx.zig");
const bimg_path = "3rdparty/bimg/";

pub fn link(exe: *std.build.LibExeObjStep) void {
    const lib = buildLibrary(exe);
    addBimgIncludes(exe);
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

    const bimg_lib = exe.builder.addStaticLibrary("bimg", null);
    addBimgIncludes(bimg_lib);
    bimg_lib.addIncludeDir(bimg_path ++ "3rdparty/");
    bimg_lib.addIncludeDir(bimg_path ++ "3rdparty/astc-codec/");
    bimg_lib.addIncludeDir(bimg_path ++ "3rdparty/astc-codec/include/");
    bimg_lib.addCSourceFiles(&.{
        bimg_path ++ "src/image.cpp",
        bimg_path ++ "src/image_gnf.cpp",
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
    bimg_lib.want_lto = false;
    bimg_lib.linkSystemLibrary("c");
    bimg_lib.linkSystemLibrary("c++");
    bimg_lib.setTarget(exe.target);
    bimg_lib.setBuildMode(exe.build_mode);
    bx.link(bimg_lib);
    bimg_lib.install();
    return bimg_lib;
}

fn addBimgIncludes(exe: *std.build.LibExeObjStep) void {
    exe.addIncludeDir(thisDir() ++ "/" ++ bimg_path ++ "include/");
}

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}
