⚠️ This documentation file isn't complete ⚠️

It is only there to serve as an example of how we'd document each template

---

## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | images-default.stencil |
| Invocation example | `swiftgen storyboard -t default …` |
| Language | Swift 3 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing images in Asset Catalogs.
It generates Swift 3 code and is suitable for most needs.

## Customization

You can customise some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName> <newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `enumName` | Allows you to change the name of the generated `enum` containing all image names as `cases`. |

## Generated Code

**Extract:**

```swift
enum Assets {
  case apple = "Apple"
  case banana = "Banana"
}
```

<details>
<summary>Full generated code</summary>

```swift
(the full code here)
```
</details>

## Usage example

```swift
// You can create new images with the convenience constructor like this:
let appleImage = UIImage(asset: .apple)
let bananaImage = UIImage(asset: .banana)

// Or as an alternative, you can refer to enum instance and call .image on it:
let sameApplemage = Assets.apple.image
let sameBananaImage = Assets.banana.image
```
