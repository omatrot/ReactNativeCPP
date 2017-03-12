#! /usr/bin/env bash

base_dir=$1
src_dir="$base_dir/src"
cpp_out="$base_dir/djinni_build/cpp"
jni_out="$base_dir/djinni_build/jni"
objc_out="$base_dir/djinni_build/objc"
java_out="$base_dir/djinni_build/java/com/reactnativecpp"
java_package="com.reactnativecpp"
namespace="reactnativecpp"
objc_prefix="RNCPP_"
djinni_file="$src_dir/djinni/helloworld.djinni"

$src_dir/third_party/djinni/src/run \
   --java-out $java_out \
   --java-package $java_package \
   --ident-java-field mFooBar \
   \
   --cpp-out $cpp_out \
   --cpp-namespace $namespace \
   \
   --jni-out $jni_out \
   --ident-jni-class NativeFooBar \
   --ident-jni-file NativeFooBar \
   \
   --objc-out $objc_out \
   --objc-type-prefix $objc_prefix \
   \
   --objcpp-out $objc_out \
   \
   --idl $djinni_file
