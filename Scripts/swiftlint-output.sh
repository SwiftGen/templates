if which swiftlint >/dev/null; then
  # Lint generated code in Tests/Expected
  for f in `find "Tests/Expected" -name '*.swift'`
  do
    cat $f | swiftlint lint --use-stdin | sed s:'<nopath>':"$f":
  done
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
