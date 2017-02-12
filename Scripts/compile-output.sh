for f in `find "Tests/Expected" -name '*.swift'`
do
	if [[ $f == *"swift3"* ]]; then
		TOOLCHAIN=""
		MODULES="Fixtures/stub-env/swift3"
	else
		TOOLCHAIN="--toolchain com.apple.dt.toolchain.Swift_2_3"
		MODULES="Fixtures/stub-env/swift2.3"
	fi

	if [[ $f == *"macOS"* ]]; then
		SDK="macosx"
		TARGET="x86_64-apple-macosx10.12"
	else
		SDK="iphoneos"
		TARGET="armv7s-apple-ios10.0"
	fi

	echo "Checking $f template-generated fixture for build errors…"
	xcrun $TOOLCHAIN -sdk $SDK swiftc -parse -target $TARGET -I $MODULES "Fixtures/stub-env/Definitions.swift" "$f"
done
