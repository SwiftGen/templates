## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | storyboards-default.stencil |
| Invocation example | `swiftgen storyboards -t default …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

This template is the default template used by SwiftGen when parsing storyboards for UIKit platforms (iOS, tvOS and watchOS).
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
    static func instantiateDependent() -> UIViewController {
      return StoryboardScene.Dependency.DependentScene.viewController()
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case MessagesListScene = "MessagesList"
    static func instantiateMessagesList() -> UITableViewController {
      guard let vc = StoryboardScene.Message.MessagesListScene.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return vc
    }
  }
}
enum StoryboardSegue {
  enum Message: String, StoryboardSegueType {
    case Embed
    case NonCustom
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Storyboards-iOS/default-context-defaults.swift)

## Usage example

```swift
// You can instantiate scenes using the generic `viewController()` method:
let vc = StoryboardScene.Dependency.DependentScene.viewController()

// or the `instantiate...()` method (which will cast to the correct type):
let vc2 = StoryboardScene.Message.instantiateMessagesList()

// You can perform segues using:
vc.performSegue(StoryboardSegue.Message.Embed)

// or match them (in prepareForSegue):
override func prepareForSegue(_ segue: UIStoryboardSegue, sender sender: AnyObject?) {
  switch UIStoryboard.Segue.Message(rawValue: segue.identifier!)! {
  case .Embed:
    // Prepare for your custom segue transition
  case .NonCustom:
    // Pass in information to the destination View Controller
  }
}
```
