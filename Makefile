run:
	flutter run

run-release:
	flutter run --release

format:
	flutter format . --line-length 120 --set-exit-if-changed

format-fix:
	flutter format . --line-length 120

lint:
	flutter analyze
lintme:
	flutter dartfmt -n --set-exit-if-changed lib/ test/
	flutter analyze --fatal-infos --fatal-warnings

test:
	flutter test
.PHONY: test

packages-outdated:
	flutter pub outdated

packages-upgrade:
	flutter pub upgrade

clean:
	flutter clean
	flutter pub get
	make build-runner

appicon-generate:
	flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons.yaml

build-runner:
	flutter pub run build_runner build --delete-conflicting-outputs

build-runner-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

build-ios:
	@echo "Build iOS"
	make clean
	rm -rf ios/build-output
	# flutter build ipa --tree-shake-icons --export-options-plist=ios/ios-export-options.plist --analyze-size --suppress-analytics
	flutter build ipa --obfuscate --split-debug-info=./build-output/debug/ --tree-shake-icons --export-options-plist=ios/ios-export-options.plist --suppress-analytics
	cp build/ios/ipa/app.ipa build-output/app.ipa

build-android-apk:
	@echo "Build APK's"
	make clean
	# flutter build apk --target-platform=android-arm64 --analyze-size
	flutter build apk --target-platform=android-arm,android-arm64 --obfuscate --split-debug-info=./build-output/debug/
	cp build/app/outputs/apk/release/app-release.apk build-output/
	mv build-output/app-release.apk build-output/app.apk

build-android-appbundle:
	@echo "Build Store App Bundle"
	make clean
	# flutter build appbundle --analyze-size
	flutter build appbundle --obfuscate --split-debug-info=./build-output/debug/
	cp build/app/outputs/bundle/release/app-release.aab build-output/
	mv build-output/app-release.aab build-output/app.aab

release-ios:
	@echo "Release iOS"
	cd ios; bundle exec fastlane deploy

release-android:
	@echo "Release Android"
	# cd android; bundle exec fastlane beta
	cd android; bundle exec fastlane deploy

app-icon:
	flutter pub run flutter_launcher_icons:main -f pubspec.yaml
	
test-convenient-android: 
	flutter run conv_test/main_test.dart --flavor dev --host-vmservice-port 9753 --disable-service-auth-codes --dart-define CONVENIENT_TEST_MANAGER_HOST=10.0.2.2 --dart-define CONVENIENT_TEST_APP_CODE_DIR=$PWD -d "emulator-5554"