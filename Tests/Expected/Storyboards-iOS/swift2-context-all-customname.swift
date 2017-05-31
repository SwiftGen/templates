// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit
import CustomSegue
import LocationPicker
import SlackTextViewController

// swiftlint:disable file_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: NSBundle(forClass: BundleToken.self))
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewControllerWithIdentifier(self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func performSegue<S: StoryboardSegueType where S.RawValue == String>(segue: S, sender: AnyObject? = nil) {
    performSegueWithIdentifier(segue.rawValue, sender: sender)
  }
}

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
enum XCTStoryboardsScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    static func initialViewController() -> LocationPicker.LocationPickerViewController {
      guard let controller = storyboard().instantiateInitialViewController() as? LocationPicker.LocationPickerViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return controller
    }

    case PublicScene = "public"
    static func instantiatePublic() -> SlackTextViewController.SLKTextViewController {
      guard let controller = XCTStoryboardsScene.AdditionalImport.PublicScene.viewController() as? SlackTextViewController.SLKTextViewController else {
        fatalError("ViewController 'public' is not of the expected class SlackTextViewController.SLKTextViewController.")
      }
      return controller
    }
  }
  enum Anonymous: StoryboardSceneType {
    static let storyboardName = "Anonymous"

    static func initialViewController() -> UINavigationController {
      guard let controller = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return controller
    }
  }
  enum Dependency: String, StoryboardSceneType {
    static let storyboardName = "Dependency"

    case DependentScene = "Dependent"
    static func instantiateDependent() -> UIViewController {
      return XCTStoryboardsScene.Dependency.DependentScene.viewController()
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    static func initialViewController() -> UIViewController {
      guard let controller = storyboard().instantiateInitialViewController() else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return controller
    }

    case ComposerScene = "Composer"
    static func instantiateComposer() -> UIViewController {
      return XCTStoryboardsScene.Message.ComposerScene.viewController()
    }

    case MessagesListScene = "MessagesList"
    static func instantiateMessagesList() -> UITableViewController {
      guard let controller = XCTStoryboardsScene.Message.MessagesListScene.viewController() as? UITableViewController else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return controller
    }

    case NavCtrlScene = "NavCtrl"
    static func instantiateNavCtrl() -> UINavigationController {
      guard let controller = XCTStoryboardsScene.Message.NavCtrlScene.viewController() as? UINavigationController else {
        fatalError("ViewController 'NavCtrl' is not of the expected class UINavigationController.")
      }
      return controller
    }

    case URLChooserScene = "URLChooser"
    static func instantiateURLChooser() -> XXPickerViewController {
      guard let controller = XCTStoryboardsScene.Message.URLChooserScene.viewController() as? XXPickerViewController else {
        fatalError("ViewController 'URLChooser' is not of the expected class XXPickerViewController.")
      }
      return controller
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case NavigationScene = "Navigation"
    static func instantiateNavigation() -> UINavigationController {
      guard let controller = XCTStoryboardsScene.Placeholder.NavigationScene.viewController() as? UINavigationController else {
        fatalError("ViewController 'Navigation' is not of the expected class UINavigationController.")
      }
      return controller
    }
  }
  enum Wizard: String, StoryboardSceneType {
    static let storyboardName = "Wizard"

    static func initialViewController() -> CreateAccViewController {
      guard let controller = storyboard().instantiateInitialViewController() as? CreateAccViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return controller
    }

    case Accept_CGUScene = "Accept-CGU"
    static func instantiateAcceptCGU() -> UIViewController {
      return XCTStoryboardsScene.Wizard.Accept_CGUScene.viewController()
    }

    case CreateAccountScene = "CreateAccount"
    static func instantiateCreateAccount() -> CreateAccViewController {
      guard let controller = XCTStoryboardsScene.Wizard.CreateAccountScene.viewController() as? CreateAccViewController else {
        fatalError("ViewController 'CreateAccount' is not of the expected class CreateAccViewController.")
      }
      return controller
    }

    case PreferencesScene = "Preferences"
    static func instantiatePreferences() -> UITableViewController {
      guard let controller = XCTStoryboardsScene.Wizard.PreferencesScene.viewController() as? UITableViewController else {
        fatalError("ViewController 'Preferences' is not of the expected class UITableViewController.")
      }
      return controller
    }

    case Validate_PasswordScene = "Validate_Password"
    static func instantiateValidatePassword() -> UIViewController {
      return XCTStoryboardsScene.Wizard.Validate_PasswordScene.viewController()
    }
  }
}

enum XCTStoryboardsSegue {
  enum AdditionalImport: String, StoryboardSegueType {
    case Private = "private"
  }
  enum Message: String, StoryboardSegueType {
    case CustomBack
    case Embed
    case NonCustom
    case Show_NavCtrl = "Show-NavCtrl"
  }
  enum Wizard: String, StoryboardSegueType {
    case ShowPassword
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

private final class BundleToken {}
