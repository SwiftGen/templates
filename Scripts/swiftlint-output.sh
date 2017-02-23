if which swiftlint >/dev/null; then
  # Lint generated code in Tests/Expected
  swiftlint lint --no-cache --strict --path "Tests/Expected"
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
