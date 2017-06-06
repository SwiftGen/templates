## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | storyboards/swift2.stencil |
| Invocation example | `swiftgen storyboards -t swift2 …` |
| Language | Swift 2 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 2* code
- **Warning**: Swift 2 is no longer actively supported, so we cannot guarantee that there won't be issues with the generated code.

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

    static let Dependent = SceneType<UIViewController>(Dependency.self, identifier: "Dependent")
  }
  enum Message: StoryboardType {
    static let storyboardName = "Message"

    static let MessagesList = SceneType<UITableViewController>(Message.self, identifier: "MessagesList")
  }
}
enum StoryboardSegue {
  enum Message: String, SegueType {
    case Embed
    case NonCustom
  }
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/Storyboards-iOS/swift2-context-all.swift)

## Usage example

```swift
// You can instantiate scenes using the `controller` property:
let vc = StoryboardScene.Dependency.Dependent.controller

// You can perform segues using:
vc.performSegue(StoryboardSegue.Message.Embed)

// or match them (in prepareForSegue):
override func prepareForSegue(_ segue: UIStoryboardSegue, sender sender: AnyObject?) {
  switch StoryboardSegue.Message(rawValue: segue.identifier!)! {
  case .Embed:
    // Prepare for your custom segue transition
  case .NonCustom:
    // Pass in information to the destination View Controller
  }
}
```
