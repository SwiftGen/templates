# For now this script doesn't work completely, because:
# - Some of the templates are aimed for Swift 3, so compiling them with Swift 2.2 will fail
# - Some templates require some context, specially for the Storyboards we need to declare
#   XXPickerViewController and CreateAccViewController dummy VC subclasses to be able to compile.
#
# Once we find a clean way to resolve those limitation, we could reactivate the script.
# You could also temporarly activate the script and ignore the errors listed above to check if those
#   are the only errors or if we introduced unrelated errors that needs to be fixed

for f in `find "Tests/Expected" -name '*.swift'`
do
	if [[ $f == *"swift3"* ]]; then
		TOOLCHAIN=""
	else
		TOOLCHAIN="--toolchain com.apple.dt.toolchain.Swift_2_3"
	fi
	if [[ $f == *"macOS"* ]]; then
		SDK="macosx"
		TARGET="x86_64-apple-macosx10.12"
	else
		SDK="iphoneos"
		TARGET="armv7s-apple-ios10.0"
	fi

	echo "Checking $f template-generated fixture for build errors…"
	xcrun $TOOLCHAIN -sdk $SDK swiftc -parse -target $TARGET "$f"
done
