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
    let name = NSStoryboard.Name(self.storyboardName)
    return NSStoryboard(name: name, bundle: Bundle(for: BundleToken.self))
  }
}

struct SceneType<T: Any> {
  let storyboard: StoryboardType.Type
  let identifier: String

  func instantiate() -> T {
    let identifier = NSStoryboard.SceneIdentifier(self.identifier)
    guard let controller = storyboard.storyboard.instantiateController(withIdentifier: identifier) as? T else {
      fatalError("Controller '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

struct InitialSceneType<T: Any> {
  let storyboard: StoryboardType.Type

  func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialController() as? T else {
      fatalError("Controller is not of the expected class \(T.self).")
    }
    return controller
  }
}

protocol SegueType: RawRepresentable { }

extension NSSeguePerforming {
  func perform<S: SegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    let identifier = NSStoryboardSegue.Identifier(segue.rawValue)
    performSegue?(withIdentifier: identifier, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum StoryboardScene {
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

extension CustomTabViewController {
  enum StoryboardSegue: String {
    case embed = "Embed"
    case modal = "Modal"
    case popover = "Popover"
    case sheet = "Sheet"
    case show = "Show"
    case `public`
  }

  func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = NSStoryboardSegue.Identifier(segue.rawValue)
    performSegue(withIdentifier: identifier, sender: sender)
  }

  enum TypedStoryboardSegue {
    case embed(destination: NSViewController)
    case modal(destination: NSViewController)
    case popover(destination: NSViewController)
    case sheet(destination: NSViewController)
    case show(destination: NSViewController)
    case `public`(destination: NSViewController, segue: FadeSegue.SlowFadeSegue)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: NSStoryboardSegue) {
      switch segue.identifier?.rawValue ?? "" {
      case "Embed":
        guard let vc = segue.destinationController as? NSViewController else {
          fatalError("Destination of segue 'Embed' is not of the expected type NSViewController.")
        }
        self = .embed(destination: vc)
      case "Modal":
        guard let vc = segue.destinationController as? NSViewController else {
          fatalError("Destination of segue 'Modal' is not of the expected type NSViewController.")
        }
        self = .modal(destination: vc)
      case "Popover":
        guard let vc = segue.destinationController as? NSViewController else {
          fatalError("Destination of segue 'Popover' is not of the expected type NSViewController.")
        }
        self = .popover(destination: vc)
      case "Sheet":
        guard let vc = segue.destinationController as? NSViewController else {
          fatalError("Destination of segue 'Sheet' is not of the expected type NSViewController.")
        }
        self = .sheet(destination: vc)
      case "Show":
        guard let vc = segue.destinationController as? NSViewController else {
          fatalError("Destination of segue 'Show' is not of the expected type NSViewController.")
        }
        self = .show(destination: vc)
      case "public":
        guard let segue = segue as? FadeSegue.SlowFadeSegue else {
          fatalError("Segue 'public' is not of the expected type FadeSegue.SlowFadeSegue.")
        }
        guard let vc = segue.destinationController as? NSViewController else {
          fatalError("Destination of segue 'public' is not of the expected type NSViewController.")
        }
        self = .`public`(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier?.rawValue ?? "")' in CustomTabViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

enum StoryboardSegue {
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
