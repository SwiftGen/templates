// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import Cocoa
import FadeSegue
import PrefsWindowController

// swiftlint:disable file_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> NSStoryboard {
    return NSStoryboard(name: self.storyboardName, bundle: NSBundle(forClass: BundleToken.self))
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func controller() -> AnyObject {
    return Self.storyboard().instantiateControllerWithIdentifier(self.rawValue)
  }
  static func controller(identifier: Self) -> AnyObject {
    return identifier.controller()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension NSSeguePerforming {
  func performSegue<S: StoryboardSegueType where S.RawValue == String>(segue: S, sender: AnyObject? = nil) {
    performSegueWithIdentifier?(segue.rawValue, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum StoryboardScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    case PrivateScene = "private"
    static func instantiatePrivate() -> PrefsWindowController.DBPrefsWindowController {
      guard let controller = StoryboardScene.AdditionalImport.PrivateScene.controller() as? PrefsWindowController.DBPrefsWindowController else {
        fatalError("Controller 'private' is not of the expected class PrefsWindowController.DBPrefsWindowController.")
      }
      return controller
    }
  }
  enum Anonymous: StoryboardSceneType {
    static let storyboardName = "Anonymous"
  }
  enum Dependency: String, StoryboardSceneType {
    static let storyboardName = "Dependency"

    case DependentScene = "Dependent"
    static func instantiateDependent() -> NSViewController {
      guard let controller = StoryboardScene.Dependency.DependentScene.controller() as? NSViewController else {
        fatalError("Controller 'Dependent' is not of the expected class NSViewController.")
      }
      return controller
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case MessageDetailsScene = "MessageDetails"
    static func instantiateMessageDetails() -> NSViewController {
      guard let controller = StoryboardScene.Message.MessageDetailsScene.controller() as? NSViewController else {
        fatalError("Controller 'MessageDetails' is not of the expected class NSViewController.")
      }
      return controller
    }

    case MessageListScene = "MessageList"
    static func instantiateMessageList() -> NSViewController {
      guard let controller = StoryboardScene.Message.MessageListScene.controller() as? NSViewController else {
        fatalError("Controller 'MessageList' is not of the expected class NSViewController.")
      }
      return controller
    }

    case MessageListFooterScene = "MessageListFooter"
    static func instantiateMessageListFooter() -> NSViewController {
      guard let controller = StoryboardScene.Message.MessageListFooterScene.controller() as? NSViewController else {
        fatalError("Controller 'MessageListFooter' is not of the expected class NSViewController.")
      }
      return controller
    }

    case MessagesTabScene = "MessagesTab"
    static func instantiateMessagesTab() -> CustomTabViewController {
      guard let controller = StoryboardScene.Message.MessagesTabScene.controller() as? CustomTabViewController else {
        fatalError("Controller 'MessagesTab' is not of the expected class CustomTabViewController.")
      }
      return controller
    }

    case SplitMessagesScene = "SplitMessages"
    static func instantiateSplitMessages() -> NSSplitViewController {
      guard let controller = StoryboardScene.Message.SplitMessagesScene.controller() as? NSSplitViewController else {
        fatalError("Controller 'SplitMessages' is not of the expected class NSSplitViewController.")
      }
      return controller
    }

    case WindowCtrlScene = "WindowCtrl"
    static func instantiateWindowCtrl() -> NSWindowController {
      guard let controller = StoryboardScene.Message.WindowCtrlScene.controller() as? NSWindowController else {
        fatalError("Controller 'WindowCtrl' is not of the expected class NSWindowController.")
      }
      return controller
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case DependentScene = "Dependent"
    static func instantiateDependent() -> NSControllerPlaceholder {
      guard let controller = StoryboardScene.Placeholder.DependentScene.controller() as? NSControllerPlaceholder else {
        fatalError("Controller 'Dependent' is not of the expected class NSControllerPlaceholder.")
      }
      return controller
    }

    case WindowScene = "Window"
    static func instantiateWindow() -> NSWindowController {
      guard let controller = StoryboardScene.Placeholder.WindowScene.controller() as? NSWindowController else {
        fatalError("Controller 'Window' is not of the expected class NSWindowController.")
      }
      return controller
    }
  }
}

enum StoryboardSegue {
  enum Message: String, StoryboardSegueType {
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
