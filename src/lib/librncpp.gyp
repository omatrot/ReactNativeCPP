{
    "targets": [
        {
            "target_name": "librncpp_jni",
            "type": "shared_library",
            "dependencies": [
              "../third_party/djinni/support-lib/support_lib.gyp:djinni_jni",
            ],
            "ldflags": [ "-llog", "-Wl,--build-id,--gc-sections,--exclude-libs,ALL" ],
            "sources": [
              "../third_party/djinni/support-lib/jni/djinni_main.cpp",
              "<!@(python ../third_party/djinni/example/glob.py ../../djinni_build/jni   '*.cpp')",
              "<!@(python ../third_party/djinni/example/glob.py ../../djinni_build/cpp   '*.cpp')",
              "<!@(python ../third_party/djinni/example/glob.py ../ '*.cpp')",
            ],
            "include_dirs": [
              "../../djinni_build/jni",
              "../../djinni_build/cpp",
              "../cpp",
            ],
        },
        {
            "target_name": "librncpp_objc",
            "type": 'static_library',
            "dependencies": [
              "../third_party/djinni/support-lib/support_lib.gyp:djinni_objc",
            ],
            'direct_dependent_settings': {

            },
            "sources": [
              "<!@(python ../third_party/djinni/example/glob.py ../../djinni_build/objc  '*.cpp' '*.mm' '*.m')",
              "<!@(python ../third_party/djinni/example/glob.py ../../djinni_build/cpp   '*.cpp')",
              "<!@(python ../third_party/djinni/example/glob.py ../ '*.cpp')",
            ],
            "include_dirs": [
              "../../djinni_build/objc",
              "../../djinni_build/cpp",
              "../cpp",
            ],
        },
    ],
}
