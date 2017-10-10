// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable superfluous_disable_command sorted_imports
import Foundation
import UIKit
import LocationPicker
import SlackTextViewController

// swiftlint:disable superfluous_disable_command file_length

protocol StoryboardType {
  static var storyboardName: String { get }
}

extension StoryboardType {
  static var storyboard: UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: NSBundle(forClass: BundleToken.self))
  }
}

struct SceneType<T: Any> {
  let storyboard: StoryboardType.Type
  let identifier: String

  var controller: T {
    guard let controller = storyboard.storyboard.instantiateViewControllerWithIdentifier(identifier) as? T else {
      fatalError("Controller '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

struct InitialSceneType<T: Any> {
  let storyboard: StoryboardType.Type

  var controller: T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("Controller is not of the expected class \(T.self).")
    }
    return controller
  }
}

protocol SegueType: RawRepresentable { }

extension UIViewController {
  func performSegue<S: SegueType where S.RawValue == String>(segue: S, sender: AnyObject? = nil) {
    performSegueWithIdentifier(segue.rawValue, sender: sender)
  }
}

// swiftlint:disable superfluous_disable_command explicit_type_interface
// swiftlint:disable superfluous_disable_command identifier_name type_name
// swiftlint:disable superfluous_disable_command line_length type_body_length
enum StoryboardScene {
  enum AdditionalImport: StoryboardType {
    static let storyboardName = "AdditionalImport"

    static let initialScene = InitialSceneType<LocationPicker.LocationPickerViewController>(AdditionalImport.self)

    static let Public = SceneType<SlackTextViewController.SLKTextViewController>(AdditionalImport.self, identifier: "public")
  }
  enum Anonymous: StoryboardType {
    static let storyboardName = "Anonymous"

    static let initialScene = InitialSceneType<UINavigationController>(Anonymous.self)
  }
  enum Dependency: StoryboardType {
    static let storyboardName = "Dependency"

    static let Dependent = SceneType<UIViewController>(Dependency.self, identifier: "Dependent")
  }
  enum Message: StoryboardType {
    static let storyboardName = "Message"

    static let initialScene = InitialSceneType<UIViewController>(Message.self)

    static let Composer = SceneType<UIViewController>(Message.self, identifier: "Composer")

    static let MessagesList = SceneType<UITableViewController>(Message.self, identifier: "MessagesList")

    static let NavCtrl = SceneType<UINavigationController>(Message.self, identifier: "NavCtrl")

    static let URLChooser = SceneType<XXPickerViewController>(Message.self, identifier: "URLChooser")
  }
  enum Placeholder: StoryboardType {
    static let storyboardName = "Placeholder"

    static let Navigation = SceneType<UINavigationController>(Placeholder.self, identifier: "Navigation")
  }
  enum Wizard: StoryboardType {
    static let storyboardName = "Wizard"

    static let initialScene = InitialSceneType<CreateAccViewController>(Wizard.self)

    static let AcceptCGU = SceneType<UIViewController>(Wizard.self, identifier: "Accept-CGU")

    static let CreateAccount = SceneType<CreateAccViewController>(Wizard.self, identifier: "CreateAccount")

    static let Preferences = SceneType<UITableViewController>(Wizard.self, identifier: "Preferences")

    static let ValidatePassword = SceneType<UIViewController>(Wizard.self, identifier: "Validate_Password")
  }
}

enum StoryboardSegue {
  enum AdditionalImport: String, SegueType {
    case Private = "private"
  }
  enum Message: String, SegueType {
    case CustomBack
    case Embed
    case NonCustom
    case ShowNavCtrl = "Show-NavCtrl"
  }
  enum Wizard: String, SegueType {
    case ShowPassword
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

private final class BundleToken {}
