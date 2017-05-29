## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | storyboards/swift3.stencil |
| Invocation example | `swiftgen storyboards -t swift3 …` |
| Language | Swift 3 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 3* code

## Customization

You can customize some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName>=<newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `sceneEnumName` | `StoryboardScene` | Allows you to change the name of the generated `enum` containing all storyboard scenes. |
| `segueEnumName` | `StoryboardSegue` | Allows you to change the name of the generated `enum` containing all storyboard segues. |

## Generated Code

Note: the generated code may look differently depending on the platform the storyboard file is targeting.

**Extract:**

```swift
enum StoryboardScene {
  enum Dependency: String, StoryboardSceneType {
    static let storyboardName = "Dependency"

    case dependentScene = "Dependent"
    static func instantiateDependent() -> UIViewController {
      return StoryboardScene.Dependency.dependentScene.viewController()
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case messagesListScene = "MessagesList"
    static func instantiateMessagesList() -> UITableViewController {
      guard let vc = StoryboardScene.Message.messagesListScene.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return vc
    }
  }
}
enum StoryboardSegue {
  enum Message: String, StoryboardSegueType {
    case embed
    case nonCustom
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Storyboards-iOS/swift3-context-all.swift)

## Usage example

```swift
// You can instantiate scenes using the generic `viewController()` method:
let vc = StoryboardScene.Dependency.dependentScene.viewController()

// or the `instantiate...()` method (which will cast to the correct type):
let vc2 = StoryboardScene.Message.instantiateMessagesList()

// You can perform segues using:
vc.perform(segue: StoryboardSegue.Message.embed)

// or match them (in prepareForSegue):
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  switch StoryboardSegue.Message(rawValue: segue.identifier!)! {
  case .embed:
    // Prepare for your custom segue transition
  case .nonCustom:
    // Pass in information to the destination View Controller
  }
}
```
