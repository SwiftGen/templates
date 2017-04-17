## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | colors-default.stencil |
| Invocation example | `swiftgen colors -t default …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing colors.
It generates Swift 2 code and is suitable for most needs.

## Customization

You can customise some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName> <newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `ColorName` | Allows you to change the name of the generated `enum` containing all colors. |

## Generated Code

**Extract:**

```swift
enum ColorName {
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#339666"></span>
  /// Alpha: 100% <br/> (0x339666ff)
  case ArticleBody
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff66cc"></span>
  /// Alpha: 100% <br/> (0xff66ccff)
  case ArticleFootnote
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Colors/default-context-defaults.swift)

## Usage example

```swift
// You can create colors with the convenience constructor like this:
let title = UIColor(named: .ArticleTitle)
let footnote = UIColor(named: .ArticleFootnote)

// Or as an alternative, you can refer to enum instance and call .color on it:
let sameTitle = ColorName.ArticleBody.color
let sameFootnote = ColorName.ArticleFootnote.color
```
