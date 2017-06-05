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
    return NSStoryboard(name: self.storyboardName, bundle: NSBundle(forClass: BundleToken.self))
  }
}

struct SceneType<T: Any> {
  let storyboard: StoryboardType.Type
  let identifier: String

  var controller: T {
    guard let controller = storyboard.storyboard.instantiateControllerWithIdentifier(identifier) as? T else {
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
  func performSegue<S: SegueType where S.RawValue == String>(segue: S, sender: AnyObject? = nil) {
    performSegueWithIdentifier?(segue.rawValue, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum StoryboardScene {
  enum AdditionalImport: StoryboardType {
    static let storyboardName = "AdditionalImport"

    static let Private = SceneType<PrefsWindowController.DBPrefsWindowController>(AdditionalImport.self, identifier: "private")
  }
  enum Anonymous: StoryboardType {
    static let storyboardName = "Anonymous"
  }
  enum Dependency: StoryboardType {
    static let storyboardName = "Dependency"

    static let Dependent = SceneType<NSViewController>(Dependency.self, identifier: "Dependent")
  }
  enum Message: StoryboardType {
    static let storyboardName = "Message"

    static let MessageDetails = SceneType<NSViewController>(Message.self, identifier: "MessageDetails")

    static let MessageList = SceneType<NSViewController>(Message.self, identifier: "MessageList")

    static let MessageListFooter = SceneType<NSViewController>(Message.self, identifier: "MessageListFooter")

    static let MessagesTab = SceneType<CustomTabViewController>(Message.self, identifier: "MessagesTab")

    static let SplitMessages = SceneType<NSSplitViewController>(Message.self, identifier: "SplitMessages")

    static let WindowCtrl = SceneType<NSWindowController>(Message.self, identifier: "WindowCtrl")
  }
  enum Placeholder: StoryboardType {
    static let storyboardName = "Placeholder"

    static let Dependent = SceneType<NSControllerPlaceholder>(Placeholder.self, identifier: "Dependent")

    static let Window = SceneType<NSWindowController>(Placeholder.self, identifier: "Window")
  }
}

enum StoryboardSegue {
  enum Message: String, SegueType {
    case Embed
    case Modal
    case Popover
    case Sheet
    case Show
    case Public = "public"
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

private final class BundleToken {}
