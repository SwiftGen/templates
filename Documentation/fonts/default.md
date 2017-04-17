## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | fonts-default.stencil |
| Invocation example | `swiftgen fonts -t default …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing fonts.
It generates Swift 2 code and is suitable for most needs.

## Customization

You can customise some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName> <newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `FontFamily` | Allows you to change the name of the generated `enum` containing all font families. |

## Generated Code

**Extract:**

```swift
enum FontFamily {
  enum SFNSDisplay: String, FontConvertible {
    case Regular = ".SFNSDisplay-Regular"
  }
  enum ZapfDingbats: String, FontConvertible {
    case Regular = "ZapfDingbatsITC"
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Fonts/default-context-defaults.swift)

## Usage example

```swift
// You can create fonts with the convenience constructor like this:
let displayRegular = UIFont(FontFamily.SFNSDisplay.Regular, size: 20.0)
let dingbats = UIFont(FontFamily.ZapfDingbats.Regular, size: 20.0)

// Or as an alternative, you can refer to enum instance and call .font on it:
let sameDisplayRegular = FontFamily.SFNSDisplay.Regular.font(20.0)
let sameDingbats = FontFamily.ZapfDingbats.Regular.font(20.0)
```
