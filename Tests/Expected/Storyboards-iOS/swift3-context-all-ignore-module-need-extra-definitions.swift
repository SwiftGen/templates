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
