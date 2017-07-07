// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import Cocoa
import FadeSegue
import PrefsWindowController

// swiftlint:disable file_length

protocol StoryboardType {
  static var storyboardName: String { get }
}

extension StoryboardType {
  static var storyboard: NSStoryboard {
    return NSStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }
}

struct SceneType<T: Any> {
  let storyboard: StoryboardType.Type
  let identifier: String

  var controller: T {
    guard let controller = storyboard.storyboard.instantiateController(withIdentifier: identifier) as? T else {
      fatalError("Controller '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

struct InitialSceneType<T: Any> {
  let storyboard: StoryboardType.Type

  var controller: T {
    guard let controller = storyboard.storyboard.instantiateInitialController() as? T else {
      fatalError("Controller is not of the expected class \(T.self).")
    }
    return controller
  }
}

protocol SegueType: RawRepresentable { }

extension NSSeguePerforming {
  func perform<S: SegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue?(withIdentifier: segue.rawValue, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum XCTStoryboardsScene {
  enum AdditionalImport: StoryboardType {
    static let storyboardName = "AdditionalImport"

    static let `private` = SceneType<PrefsWindowController.DBPrefsWindowController>(storyboard: AdditionalImport.self, identifier: "private")
  }
  enum Anonymous: StoryboardType {
    static let storyboardName = "Anonymous"
  }
  enum Dependency: StoryboardType {
    static let storyboardName = "Dependency"

    static let dependent = SceneType<NSViewController>(storyboard: Dependency.self, identifier: "Dependent")
  }
  enum Message: StoryboardType {
    static let storyboardName = "Message"

    static let messageDetails = SceneType<NSViewController>(storyboard: Message.self, identifier: "MessageDetails")

    static let messageList = SceneType<NSViewController>(storyboard: Message.self, identifier: "MessageList")

    static let messageListFooter = SceneType<NSViewController>(storyboard: Message.self, identifier: "MessageListFooter")

    static let messagesTab = SceneType<CustomTabViewController>(storyboard: Message.self, identifier: "MessagesTab")

    static let splitMessages = SceneType<NSSplitViewController>(storyboard: Message.self, identifier: "SplitMessages")

    static let windowCtrl = SceneType<NSWindowController>(storyboard: Message.self, identifier: "WindowCtrl")
  }
  enum Placeholder: StoryboardType {
    static let storyboardName = "Placeholder"

    static let dependent = SceneType<NSControllerPlaceholder>(storyboard: Placeholder.self, identifier: "Dependent")

    static let window = SceneType<NSWindowController>(storyboard: Placeholder.self, identifier: "Window")
  }
}

enum XCTStoryboardsSegue {
  enum Message: String, SegueType {
    case embed = "Embed"
    case modal = "Modal"
    case popover = "Popover"
    case sheet = "Sheet"
    case show = "Show"
    case `public`
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

private final class BundleToken {}
