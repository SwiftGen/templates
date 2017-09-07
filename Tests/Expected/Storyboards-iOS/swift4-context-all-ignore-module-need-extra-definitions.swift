// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit
import CustomSegue
import LocationPicker

// swiftlint:disable file_length

protocol StoryboardType {
  static var storyboardName: String { get }
}

extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: Bundle(for: BundleToken.self))
  }
}

struct SceneType<T: Any> {
  let storyboard: StoryboardType.Type
  let identifier: String

  func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

struct InitialSceneType<T: Any> {
  let storyboard: StoryboardType.Type

  func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }
}

protocol SegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: SegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum StoryboardScene {
  enum AdditionalImport: StoryboardType {
    static let storyboardName = "AdditionalImport"

    static let initialScene = InitialSceneType<LocationPicker.LocationPickerViewController>(storyboard: AdditionalImport.self)

    static let `public` = SceneType<SLKTextViewController>(storyboard: AdditionalImport.self, identifier: "public")
  }
  enum Anonymous: StoryboardType {
    static let storyboardName = "Anonymous"

    static let initialScene = InitialSceneType<UINavigationController>(storyboard: Anonymous.self)
  }
  enum Dependency: StoryboardType {
    static let storyboardName = "Dependency"

    static let dependent = SceneType<UIViewController>(storyboard: Dependency.self, identifier: "Dependent")
  }
  enum Message: StoryboardType {
    static let storyboardName = "Message"

    static let initialScene = InitialSceneType<UIViewController>(storyboard: Message.self)

    static let composer = SceneType<UIViewController>(storyboard: Message.self, identifier: "Composer")

    static let messagesList = SceneType<UITableViewController>(storyboard: Message.self, identifier: "MessagesList")

    static let navCtrl = SceneType<UINavigationController>(storyboard: Message.self, identifier: "NavCtrl")

    static let urlChooser = SceneType<XXPickerViewController>(storyboard: Message.self, identifier: "URLChooser")
  }
  enum Placeholder: StoryboardType {
    static let storyboardName = "Placeholder"

    static let navigation = SceneType<UINavigationController>(storyboard: Placeholder.self, identifier: "Navigation")
  }
  enum Wizard: StoryboardType {
    static let storyboardName = "Wizard"

    static let initialScene = InitialSceneType<CreateAccViewController>(storyboard: Wizard.self)

    static let acceptCGU = SceneType<UIViewController>(storyboard: Wizard.self, identifier: "Accept-CGU")

    static let createAccount = SceneType<CreateAccViewController>(storyboard: Wizard.self, identifier: "CreateAccount")

    static let preferences = SceneType<UITableViewController>(storyboard: Wizard.self, identifier: "Preferences")

    static let validatePassword = SceneType<UIViewController>(storyboard: Wizard.self, identifier: "Validate_Password")
  }
}

extension CreateAccViewController {
  enum StoryboardSegue: String {
    case showPassword = "ShowPassword"
  }

  func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  enum TypedStoryboardSegue {
    case showPassword(destination: UIViewController)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "ShowPassword":
        let vc = segue.destination
        self = .showPassword(destination: vc)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in CreateAccViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

extension XXPickerViewController {
  enum StoryboardSegue: String {
    case customBack = "CustomBack"
    case embed = "Embed"
    case nonCustom = "NonCustom"
    case showNavCtrl = "Show-NavCtrl"
  }

  func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  enum TypedStoryboardSegue {
    case customBack(destination: UIViewController, segue: CustomSegueClass2)
    case embed(destination: UIViewController)
    case nonCustom(destination: UIViewController)
    case showNavCtrl(destination: UINavigationController, segue: CustomSegueClass)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "CustomBack":
        guard let segue = segue as? CustomSegueClass2 else {
          fatalError("Segue 'CustomBack' is not of the expected type CustomSegueClass2.")
        }
        let vc = segue.destination
        self = .customBack(destination: vc, segue: segue)
      case "Embed":
        let vc = segue.destination
        self = .embed(destination: vc)
      case "NonCustom":
        let vc = segue.destination
        self = .nonCustom(destination: vc)
      case "Show-NavCtrl":
        guard let segue = segue as? CustomSegueClass else {
          fatalError("Segue 'Show-NavCtrl' is not of the expected type CustomSegueClass.")
        }
        guard let vc = segue.destination as? UINavigationController else {
          fatalError("Destination of segue 'Show-NavCtrl' is not of the expected type UINavigationController.")
        }
        self = .showNavCtrl(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in XXPickerViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

extension LocationPicker.LocationPickerViewController {
  enum StoryboardSegue: String {
    case `private`
  }

  func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  enum TypedStoryboardSegue {
    case `private`(destination: SLKTextViewController, segue: CustomSegue.SlideDownSegue)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "private":
        guard let segue = segue as? CustomSegue.SlideDownSegue else {
          fatalError("Segue 'private' is not of the expected type CustomSegue.SlideDownSegue.")
        }
        guard let vc = segue.destination as? SLKTextViewController else {
          fatalError("Destination of segue 'private' is not of the expected type SLKTextViewController.")
        }
        self = .`private`(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in LocationPicker.LocationPickerViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

extension SLKTextViewController {
  enum StoryboardSegue: String {
    case `private`
  }

  func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = segue.rawValue
    performSegue(withIdentifier: identifier, sender: sender)
  }

  enum TypedStoryboardSegue {
    case `private`(destination: SLKTextViewController, segue: CustomSegue.SlideDownSegue)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "private":
        guard let segue = segue as? CustomSegue.SlideDownSegue else {
          fatalError("Segue 'private' is not of the expected type CustomSegue.SlideDownSegue.")
        }
        guard let vc = segue.destination as? SLKTextViewController else {
          fatalError("Destination of segue 'private' is not of the expected type SLKTextViewController.")
        }
        self = .`private`(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in SLKTextViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

enum StoryboardSegue {
  enum AdditionalImport: String, SegueType {
    case `private`
  }
  enum Message: String, SegueType {
    case customBack = "CustomBack"
    case embed = "Embed"
    case nonCustom = "NonCustom"
    case showNavCtrl = "Show-NavCtrl"
  }
  enum Wizard: String, SegueType {
    case showPassword = "ShowPassword"
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

private final class BundleToken {}
