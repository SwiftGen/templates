## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | storyboards/swift3.stencil |
| Invocation example | `swiftgen storyboards -t swift3 …` |
| Language | Swift 3 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 3* code
- The generated code supports both UIKit platforms (iOS, tvOS and watchOS) and AppKit platform (macOS)

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
  enum Dependency: StoryboardType {
    static let storyboardName = "Dependency"

    static let dependent = SceneType<UIViewController>(storyboard: Dependency.self, identifier: "Dependent")
  }
  enum Message: StoryboardType {
    static let storyboardName = "Message"

    static let messagesList = SceneType<UITableViewController>(storyboard: Message.self, identifier: "MessagesList")
  }
}
enum StoryboardSegue {
  enum Message: String, SegueType {
    case embed
    case nonCustom
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Storyboards-iOS/swift3-context-all.swift)

## Usage example

```swift
// You can instantiate scenes using the `instantiate` property:
let vc = StoryboardScene.Dependency.dependent.instantiate()

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
