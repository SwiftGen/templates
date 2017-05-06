## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | strings-dot-syntax.stencil |
| Invocation example | `swiftgen strings -t dot-syntax …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing strings in (for example) `Localizable.strings`.
It generates Swift 2 code and is suitable for people using structured keys for their strings (components separated by the `.` character), for example:

```
"some.deep.structure"
"some.deep.something"
"hello.world"
```

## Customization

You can customise some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName> <newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `L10n` | Allows you to change the name of the generated `enum` containing all string tables. |

## Generated Code

**Extract:**

```swift
enum L10n {
  /// Some alert body there
  static let AlertMessage = L10n.tr("alert_message")
  /// Title of the alert
  static let AlertTitle = L10n.tr("alert_title")
  
  enum Apples {
    /// You have %d apples
    static func Count(p1: Int) -> String {
      return L10n.tr("apples.count", p1)
    }
  }

  enum Bananas {
    /// Those %d bananas belong to %@.
    static func Owner(p1: Int, p2: String) -> String {
      return L10n.tr("bananas.owner", p1, p2)
    }
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Strings/dot-syntax-context-defaults.swift)

## Usage example

```swift
// Simple strings
let message = L10n.AlertMessage
let title = L10n.AlertTitle

// with parameters, note that each argument needs to be of the correct type
let apples = L10n.Apples.Count(3)
let bananas = L10n.Bananas.Owner(5, "Olivier")
```
