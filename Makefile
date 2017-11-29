# we specify a root target for android to prevent all of the targets from spidering out
./ios/librncpp.xcodeproj: ./src/lib/librncpp.gyp ./src/third_party/djinni/support-lib/support_lib.gyp ./src/djinni/helloworld.djinni
	npm run djinni
	src/third_party/gyp/gyp --depth=. -f xcode -DOS=ios --generator-output ./ios -Isrc/third_party/djinni/common.gypi ./src/lib/librncpp.gyp --no-duplicate-basename-check

ios: ./ios/librncpp.xcodeproj
	xcodebuild -project ios/ReactNativeCPP.xcodeproj \
           -scheme ReactNativeCPP \
           -configuration 'Debug' \
           -sdk iphonesimulator

# # we specify a root target for android to prevent all of the targets from spidering out
# GypAndroid.mk: libhelloworld.gyp ./deps/djinni/support-lib/support_lib.gyp helloworld.djinni
# 	sh ./run_djinni.sh
# 	ANDROID_BUILD_TOP=$(shell dirname `which ndk-build`) deps/gyp/gyp --depth=. -f android -DOS=android -Ideps/djinni/common.gypi ./libhelloworld.gyp --root-target=libhelloworld_jni
#
# # this target implicitly depends on GypAndroid.mk since gradle will try to make it
# android: GypAndroid.mk
# 	cd android_project/HelloWorld/ && ./gradlew app:assembleDebug
# 	@echo "Apks produced at:"
# 	@python deps/djinni/example/glob.py ./ '*.apk'
