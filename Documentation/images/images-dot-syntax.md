## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | images-dot-syntax.stencil |
| Invocation example | `swiftgen images -t dot-syntax …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing images in Asset Catalogs.
It generates Swift 2 code and is suitable for most needs.

## Customization

You can customise some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName> <newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `Asset` | Allows you to change the name of the generated `enum` containing all image names. |

## Generated Code

**Extract:**

```swift
enum Asset {
  enum Exotic {
    static let Banana: AssetType = "Exotic/Banana"
    static let Mango: AssetType = "Exotic/Mango"
  }
  static let Private: AssetType = "private"
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Images/dot-syntax-context-defaults.swift)

## Usage example

```swift
// You can create new images with the convenience constructor like this:
let bananaImage = UIImage(Asset.Exotic.Banana)
let privateImage = UIImage(Asset.Private)

// Or as an alternative, you can refer to enum instance and call .image on it:
let sameBananaImage = Asset.Exotic.Banana.image
let samePrivateImage = Asset.Private.image
```
