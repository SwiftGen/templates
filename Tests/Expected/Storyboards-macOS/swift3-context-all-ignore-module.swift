// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import Cocoa
import PrefsWindowController

// swiftlint:disable file_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> NSStoryboard {
    return NSStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }

  static func initialController() -> Any {
    guard let controller = storyboard().instantiateInitialController() else {
      fatalError("Failed to instantiate initialController for \(self.storyboardName)")
    }
    return controller
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func controller() -> Any {
    return Self.storyboard().instantiateController(withIdentifier: self.rawValue)
  }
  static func controller(identifier: Self) -> Any {
    return identifier.controller()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension NSSeguePerforming {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue?(withIdentifier: segue.rawValue, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum StoryboardScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    case privateScene = "private"
    static func instantiatePrivate() -> PrefsWindowController.DBPrefsWindowController {
      guard let controller = StoryboardScene.AdditionalImport.privateScene.controller() as? PrefsWindowController.DBPrefsWindowController else {
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

    case dependentScene = "Dependent"
    static func instantiateDependent() -> NSViewController {
      guard let controller = StoryboardScene.Dependency.dependentScene.controller() as? NSViewController else {
        fatalError("Controller 'Dependent' is not of the expected class NSViewController.")
      }
      return controller
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case messageDetailsScene = "MessageDetails"
    static func instantiateMessageDetails() -> NSViewController {
      guard let controller = StoryboardScene.Message.messageDetailsScene.controller() as? NSViewController else {
        fatalError("Controller 'MessageDetails' is not of the expected class NSViewController.")
      }
      return controller
    }

    case messageListScene = "MessageList"
    static func instantiateMessageList() -> NSViewController {
      guard let controller = StoryboardScene.Message.messageListScene.controller() as? NSViewController else {
        fatalError("Controller 'MessageList' is not of the expected class NSViewController.")
      }
      return controller
    }

    case messageListFooterScene = "MessageListFooter"
    static func instantiateMessageListFooter() -> NSViewController {
      guard let controller = StoryboardScene.Message.messageListFooterScene.controller() as? NSViewController else {
        fatalError("Controller 'MessageListFooter' is not of the expected class NSViewController.")
      }
      return controller
    }

    case messagesTabScene = "MessagesTab"
    static func instantiateMessagesTab() -> CustomTabViewController {
      guard let controller = StoryboardScene.Message.messagesTabScene.controller() as? CustomTabViewController else {
        fatalError("Controller 'MessagesTab' is not of the expected class CustomTabViewController.")
      }
      return controller
    }

    case splitMessagesScene = "SplitMessages"
    static func instantiateSplitMessages() -> NSSplitViewController {
      guard let controller = StoryboardScene.Message.splitMessagesScene.controller() as? NSSplitViewController else {
        fatalError("Controller 'SplitMessages' is not of the expected class NSSplitViewController.")
      }
      return controller
    }

    case windowCtrlScene = "WindowCtrl"
    static func instantiateWindowCtrl() -> NSWindowController {
      guard let controller = StoryboardScene.Message.windowCtrlScene.controller() as? NSWindowController else {
        fatalError("Controller 'WindowCtrl' is not of the expected class NSWindowController.")
      }
      return controller
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case dependentScene = "Dependent"
    static func instantiateDependent() -> NSControllerPlaceholder {
      guard let controller = StoryboardScene.Placeholder.dependentScene.controller() as? NSControllerPlaceholder else {
        fatalError("Controller 'Dependent' is not of the expected class NSControllerPlaceholder.")
      }
      return controller
    }

    case windowScene = "Window"
    static func instantiateWindow() -> NSWindowController {
      guard let controller = StoryboardScene.Placeholder.windowScene.controller() as? NSWindowController else {
        fatalError("Controller 'Window' is not of the expected class NSWindowController.")
      }
      return controller
    }
  }
}

enum StoryboardSegue {
  enum Message: String, StoryboardSegueType {
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
