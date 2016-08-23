.PHONY: clef clef-tests clean-clef help

help:
	@echo "clef -- Add the Clef Native plugin, whose path is CLEF_NATIVE_PLUGIN_PATH"
	@echo "clef-tests -- Add the Clef Native plugin's tests"
	@echo "clean-clef -- Remove all Clef Native related plugins"

ios:
	cordova platform add ios --save

clean-ios:
	cordova platform rm ios --save

prepare:
	cordova prepare

run:
	cordova run --device

emulate:
	cordova emulate

clef:
	cordova plugin add $(CLEF_NATIVE_PLUGIN_PATH) --save

clef-tests:
	cordova plugin add $(CLEF_NATIVE_PLUGIN_PATH)/tests --save

clean: clean-clef clean-ios

clean-clef:
	cordova plugins list | grep clef | cut -f 1 -d " " | xargs -L 1 cordova plugins rm --save
