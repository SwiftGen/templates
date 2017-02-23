INPUT_PATH="Fixtures/stub-env/Modules"
OUTPUT_PATH="Fixtures/stub-env"

function compileModule {
	MODULE="$1"
	SDK="$2"
	TARGET="$3"

	SWIFT2_TOOLCHAIN="--toolchain com.apple.dt.toolchain.Swift_2_3"
	SWIFT3_TOOLCHAIN=""

	xcrun $SWIFT3_TOOLCHAIN swiftc -emit-module "$INPUT_PATH/$MODULE.swift" -sdk $SDK -module-name "$MODULE" -emit-module-path "$OUTPUT_PATH/swift3" -target $TARGET || exit 1
	xcrun $SWIFT2_TOOLCHAIN swiftc -emit-module "$INPUT_PATH/$MODULE.swift" -sdk $SDK -module-name "$MODULE" -emit-module-path "$OUTPUT_PATH/swift2.3" -target $TARGET || exit 1
}

# compile macos modules
SDK=$(xcrun --show-sdk-path --sdk macosx)
TARGET="x86_64-apple-macosx10.12"
MODULES=( "PrefsWindowController" )

for m in ${MODULES[@]}; do
	echo "Compiling module ${m}… (macos)"
	compileModule $m $SDK $TARGET
done

#compile ios modules
SDK=$(xcrun --show-sdk-path --sdk iphoneos)
TARGET="armv7s-apple-ios10.0"
MODULES=( "CustomSegue" "LocationPicker" "SlackTextViewController" )

for m in ${MODULES[@]}; do
	echo "Compiling module ${m}… (ios)"
	compileModule $m $SDK $TARGET
done

# don't need this
rm $OUTPUT_PATH/*.swiftdoc
