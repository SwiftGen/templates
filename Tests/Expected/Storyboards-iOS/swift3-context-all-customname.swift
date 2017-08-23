// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit
import CustomSegue
import LocationPicker
import SlackTextViewController

// swiftlint:disable file_length

protocol StoryboardType {
  static var storyboardName: String { get }
}

extension StoryboardType {
  static var storyboard: UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }
}

struct SceneType<T: Any> {
  let storyboard: StoryboardType.Type
  let identifier: String

  func instantiate() -> T {
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
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum XCTStoryboardsScene {
  enum AdditionalImport: StoryboardType {
    static let storyboardName = "AdditionalImport"

    static let initialScene = InitialSceneType<LocationPicker.LocationPickerViewController>(storyboard: AdditionalImport.self)

    static let `public` = SceneType<SlackTextViewController.SLKTextViewController>(storyboard: AdditionalImport.self, identifier: "public")
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

extension LocationPicker.LocationPickerViewController {
  enum XCTStoryboardsSegue: String {
    case `private`
  }

  func perform(segue: XCTStoryboardsSegue, sender: Any? = nil) {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }

  enum TypedXCTStoryboardsSegue {
    case `private`(destination: SlackTextViewController.SLKTextViewController)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "private":
        guard let vc = segue.destination as? SlackTextViewController.SLKTextViewController else {
          fatalError("Destination of segue 'private' is not of the expected type SlackTextViewController.SLKTextViewController.")
        }
        self = .`private`(destination: vc)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in LocationPicker.LocationPickerViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

extension SlackTextViewController.SLKTextViewController {
  enum XCTStoryboardsSegue: String {
    case `private`
  }

  func perform(segue: XCTStoryboardsSegue, sender: Any? = nil) {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }

  enum TypedXCTStoryboardsSegue {
    case `private`(destination: SlackTextViewController.SLKTextViewController)

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "private":
        guard let vc = segue.destination as? SlackTextViewController.SLKTextViewController else {
          fatalError("Destination of segue 'private' is not of the expected type SlackTextViewController.SLKTextViewController.")
        }
        self = .`private`(destination: vc)
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in SlackTextViewController.SLKTextViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

extension XXPickerViewController {
  enum XCTStoryboardsSegue: String {
    case customBack = "CustomBack"
    case embed = "Embed"
    case nonCustom = "NonCustom"
    case showNavCtrl = "Show-NavCtrl"
  }

  func perform(segue: XCTStoryboardsSegue, sender: Any? = nil) {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }

  enum TypedXCTStoryboardsSegue {
    case customBack(destination: UIViewController)
    case embed(destination: UIViewController)
    case nonCustom(destination: UIViewController)
    case showNavCtrl(destination: UINavigationController)

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "CustomBack":
        let vc = segue.destination
        self = .customBack(destination: vc)
      case "Embed":
        let vc = segue.destination
        self = .embed(destination: vc)
      case "NonCustom":
        let vc = segue.destination
        self = .nonCustom(destination: vc)
      case "Show-NavCtrl":
        guard let vc = segue.destination as? UINavigationController else {
          fatalError("Destination of segue 'Show-NavCtrl' is not of the expected type UINavigationController.")
        }
        self = .showNavCtrl(destination: vc)
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in XXPickerViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

extension CreateAccViewController {
  enum XCTStoryboardsSegue: String {
    case showPassword = "ShowPassword"
  }

  func perform(segue: XCTStoryboardsSegue, sender: Any? = nil) {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }

  enum TypedXCTStoryboardsSegue {
    case showPassword(destination: UIViewController)

    // swiftlint:disable cyclomatic_complexity
    init(segue: UIStoryboardSegue) {
      switch segue.identifier ?? "" {
      case "ShowPassword":
        let vc = segue.destination
        self = .showPassword(destination: vc)
      default:
        fatalError("Unrecognized segue '\(segue.identifier ?? "")' in CreateAccViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

enum XCTStoryboardsSegue {
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
