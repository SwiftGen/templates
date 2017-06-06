## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | fonts/swift2.stencil |
| Invocation example | `swiftgen fonts -t swift2 …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 2* code
- **Warning**: Swift 2 is no longer actively supported, so we cannot guarantee that there won't be issues with the generated code.

## Customization

You can customize some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName>=<newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `FontFamily` | Allows you to change the name of the generated `enum` containing all font families. |

## Generated Code

**Extract:**

```swift
enum FontFamily {
  enum SFNSDisplay: String, FontConvertible {
    static let Regular = FontConvertible(".SFNSDisplay-Regular", family: ".SF NS Display", path: "SFNSDisplay-Regular.otf")
  }
  enum ZapfDingbats: String, FontConvertible {
    static let Regular = FontConvertible("ZapfDingbatsITC", family: "Zapf Dingbats", path: "ZapfDingbats.ttf")
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Fonts/swift2-context-defaults.swift)

## Usage example

```swift
// You can create fonts with the convenience constructor like this:
let displayRegular = UIFont(FontFamily.SFNSDisplay.Regular, size: 20.0)
let dingbats = UIFont(FontFamily.ZapfDingbats.Regular, size: 20.0)

// Or as an alternative, you can refer to enum instance and call .font on it:
let sameDisplayRegular = FontFamily.SFNSDisplay.Regular.font(20.0)
let sameDingbats = FontFamily.ZapfDingbats.Regular.font(20.0)
```
