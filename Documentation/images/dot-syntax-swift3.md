## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | images-dot-syntax-swift3.stencil |
| Invocation example | `swiftgen images -t dot-syntax-swift3 …` |
| Language | Swift 3 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing images in Asset Catalogs.
It generates Swift 3 code and is suitable for most needs.

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
    static let banana: AssetType = "Exotic/Banana"
    static let mango: AssetType = "Exotic/Mango"
  }
  static let `private`: AssetType = "private"
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Images/dot-syntax-swift3-context-defaults.swift)

## Usage example

```swift
// You can create new images with the convenience constructor like this:
let bananaImage = UIImage(asset: Asset.Exotic.banana)
let privateImage = UIImage(asset: Asset.private)

// Or as an alternative, you can refer to enum instance and call .image on it:
let sameBananaImage = Asset.Exotic.banana.image
let samePrivateImage = Asset.private.image
```
