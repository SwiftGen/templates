## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | colors/literals-swift4.stencil |
| Invocation example | `swiftgen colors -t literals-swift4 …` |
| Language | Swift 4 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 4* code
- Supports _multiple_ color names with the _same_ value
- Uses `#colorLiteral`s for easy preview of the actual color

## Customization

You can customize some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName>=<newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `ColorName` | Allows you to change the name of the generated `enum` containing all colors. |

## Generated Code

**Extract:**

```swift
extension ColorName {
  /// 0x339666ff (r: 20%, g: 58%, b: 40%, a: 100%)
  static let articleBody = #colorLiteral(red: 0.2, green: 0.588235, blue: 0.4, alpha: 1.0)
  /// 0xff66ccff (r: 100%, g: 40%, b: 80%, a: 100%)
  static let articleFootnote = #colorLiteral(red: 1.0, green: 0.4, blue: 0.8, alpha: 1.0)
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Colors/literals-swift4-context-defaults.swift)

## Usage example

```swift
// To reference a color, simpy reference it's static instance by name:
let title = ColorName.articleBody
let footnote = ColorName.articleFootnote
```
