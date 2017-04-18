## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | storyboards-osx-default.stencil |
| Invocation example | `swiftgen storyboards -t osx-default …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing storyboards for AppKit platforms (macOS).
It generates Swift 2 code and is suitable for most needs.

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

    case DependentScene = "Dependent"
    static func instantiateDependent() -> NSViewController {
      guard let vc = StoryboardScene.Dependency.DependentScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'Dependent' is not of the expected class NSViewController.")
      }
      return vc
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case MessageListScene = "MessageList"
    static func instantiateMessageList() -> NSViewController {
      guard let vc = StoryboardScene.Message.MessageListScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'MessageList' is not of the expected class NSViewController.")
      }
      return vc
    }
  }
}
enum StoryboardSegue {
  enum Message: String, StoryboardSegueType {
    case Embed
    case Modal
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Storyboards-macOS/default-context-all.swift)

## Usage example

```swift
// You can instantiate scenes using the generic `controller()` method:
let vc = StoryboardScene.Dependency.DependentScene.controller()

// or the `instantiate...()` method (which will cast to the correct type):
let vc2 = StoryboardScene.Message.instantiateMessageList()

// You can perform segues using:
vc.performSegue(StoryboardSegue.Message.Embed)

// or match them (in prepareForSegue):
override func prepareForSegue(_ segue: NSStoryboardSegue, sender sender: AnyObject?) {
  switch StoryboardSegue.Message(rawValue: segue.identifier!)! {
  case .Embed:
    // Prepare for your custom segue transition
  case .Modal:
    // Pass in information to the destination View Controller
  }
}
```
