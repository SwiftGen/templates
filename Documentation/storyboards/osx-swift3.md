## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | storyboards-osx-swift3.stencil |
| Invocation example | `swiftgen storyboards -t osx-swift3 …` |
| Language | Swift 3 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing storyboards for AppKit platforms (macOS).
It generates Swift 3 code and is suitable for most needs.

## Customization

You can customise some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName> <newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `sceneEnumName` | `StoryboardScene` | Allows you to change the name of the generated `enum` containing all storyboard scenes. |
| `segueEnumName` | `StoryboardSegue` | Allows you to change the name of the generated `enum` containing all storyboard segues. |

## Generated Code

**Extract:**

```swift
enum StoryboardScene {
  enum Dependency: String, StoryboardSceneType {
    static let storyboardName = "Dependency"

    case dependentScene = "Dependent"
    static func instantiateDependent() -> NSViewController {
      guard let vc = StoryboardScene.Dependency.dependentScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'Dependent' is not of the expected class NSViewController.")
      }
      return vc
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case messageListScene = "MessageList"
    static func instantiateMessageList() -> NSViewController {
      guard let vc = StoryboardScene.Message.messageListScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'MessageList' is not of the expected class NSViewController.")
      }
      return vc
    }
  }
}
enum StoryboardSegue {
  enum Message: String, StoryboardSegueType {
    case embed
    case modal
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Storyboards-macOS/swift3-context-all.swift)

## Usage example

```swift
// You can instantiate scenes using the generic `controller()` method:
let vc = StoryboardScene.Dependency.dependentScene.controller()

// or the `instantiate...()` method (which will cast to the correct type):
let vc2 = StoryboardScene.Message.instantiateMessageList()

// You can perform segues using:
vc.perform(segue: StoryboardSegue.Message.embed)

// or match them (in prepareForSegue):
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  switch UIStoryboard.Segue.Message(rawValue: segue.identifier!)! {
  case .embed:
    // Prepare for your custom segue transition
  case .modal:
    // Pass in information to the destination View Controller
  }
}
```
