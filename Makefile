SHELL=bash

deploy-prod:
	fvm flutter build web --dart-define=ENV=production --web-renderer html --release
	firebase deploy --only hosting:prod
deploy-dev:
	fvm flutter build web --dart-define=ENV=development --web-renderer html
	firebase deploy --only hosting:dev
freezed:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
freezed-watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
