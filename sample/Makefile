.PHONY: clef clef-tests clean-clef help

help:
	@echo "clef -- Add the Clef Native plugin, whose path is CLEF_NATIVE_PLUGIN_PATH"
	@echo "clef-tests -- Add the Clef Native plugin's tests"
	@echo "clean-clef -- Remove all Clef Native related plugins"

ios:
	cordova platform rm ios --save
	cordova platform add ios --save

emulate:
	cordova emulate

clef:
	cordova plugin add $(CLEF_NATIVE_PLUGIN_PATH) --link --save

clef-tests:
	cordova plugin add $(CLEF_NATIVE_PLUGIN_PATH)/tests --link --save

clean-clef:
	cordova plugins list | grep clef | cut -f 1 -d " " | xargs -L 1 cordova plugins rm --save
