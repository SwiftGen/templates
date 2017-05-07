// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation
import Cocoa
import PrefsWindowController

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> NSStoryboard {
    return NSStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }

  static func initialController() -> Any {
    guard let controller = storyboard().instantiateInitialController()
    else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
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

extension NSWindowController {
  func performSegue<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

extension NSViewController {
  func performSegue<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

enum StoryboardScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    case privateScene = "private"
    static func instantiatePrivate() -> PrefsWindowController.DBPrefsWindowController {
      guard let vc = StoryboardScene.AdditionalImport.privateScene.controller() as? PrefsWindowController.DBPrefsWindowController
      else {
        fatalError("ViewController 'private' is not of the expected class PrefsWindowController.DBPrefsWindowController.")
      }
      return vc
    }
  }
  enum Anonymous: StoryboardSceneType {
    static let storyboardName = "Anonymous"
  }
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

    case messageDetailsScene = "MessageDetails"
    static func instantiateMessageDetails() -> NSViewController {
      guard let vc = StoryboardScene.Message.messageDetailsScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'MessageDetails' is not of the expected class NSViewController.")
      }
      return vc
    }

    case messageListScene = "MessageList"
    static func instantiateMessageList() -> NSViewController {
      guard let vc = StoryboardScene.Message.messageListScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'MessageList' is not of the expected class NSViewController.")
      }
      return vc
    }

    case messageListFooterScene = "MessageListFooter"
    static func instantiateMessageListFooter() -> NSViewController {
      guard let vc = StoryboardScene.Message.messageListFooterScene.controller() as? NSViewController
      else {
        fatalError("ViewController 'MessageListFooter' is not of the expected class NSViewController.")
      }
      return vc
    }

    case messagesTabScene = "MessagesTab"
    static func instantiateMessagesTab() -> CustomTabViewController {
      guard let vc = StoryboardScene.Message.messagesTabScene.controller() as? CustomTabViewController
      else {
        fatalError("ViewController 'MessagesTab' is not of the expected class CustomTabViewController.")
      }
      return vc
    }

    case splitMessagesScene = "SplitMessages"
    static func instantiateSplitMessages() -> NSSplitViewController {
      guard let vc = StoryboardScene.Message.splitMessagesScene.controller() as? NSSplitViewController
      else {
        fatalError("ViewController 'SplitMessages' is not of the expected class NSSplitViewController.")
      }
      return vc
    }

    case windowCtrlScene = "WindowCtrl"
    static func instantiateWindowCtrl() -> NSWindowController {
      guard let vc = StoryboardScene.Message.windowCtrlScene.controller() as? NSWindowController
      else {
        fatalError("ViewController 'WindowCtrl' is not of the expected class NSWindowController.")
      }
      return vc
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case dependentScene = "Dependent"
    static func instantiateDependent() -> NSControllerPlaceholder {
      guard let vc = StoryboardScene.Placeholder.dependentScene.controller() as? NSControllerPlaceholder
      else {
        fatalError("ViewController 'Dependent' is not of the expected class NSControllerPlaceholder.")
      }
      return vc
    }

    case windowScene = "Window"
    static func instantiateWindow() -> NSWindowController {
      guard let vc = StoryboardScene.Placeholder.windowScene.controller() as? NSWindowController
      else {
        fatalError("ViewController 'Window' is not of the expected class NSWindowController.")
      }
      return vc
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

private final class BundleToken {}
