if which swiftlint >/dev/null; then
  # Lint SwiftGen's source itself
  swiftlint lint --no-cache --path "${PROJECT_DIR}/TestSuites"
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
