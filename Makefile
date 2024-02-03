SHELL=bash

deploy:
	# TODO: 後で書く
freezed:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
freezed-watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
