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
    return UIStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }

  static func initialViewController() -> UIViewController {
    guard let controller = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return controller
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
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

    case publicScene = "public"
    static func instantiatePublic() -> SlackTextViewController.SLKTextViewController {
      guard let controller = XCTStoryboardsScene.AdditionalImport.publicScene.viewController() as? SlackTextViewController.SLKTextViewController else {
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

    case dependentScene = "Dependent"
    static func instantiateDependent() -> UIViewController {
      return XCTStoryboardsScene.Dependency.dependentScene.viewController()
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case composerScene = "Composer"
    static func instantiateComposer() -> UIViewController {
      return XCTStoryboardsScene.Message.composerScene.viewController()
    }

    case messagesListScene = "MessagesList"
    static func instantiateMessagesList() -> UITableViewController {
      guard let controller = XCTStoryboardsScene.Message.messagesListScene.viewController() as? UITableViewController else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return controller
    }

    case navCtrlScene = "NavCtrl"
    static func instantiateNavCtrl() -> UINavigationController {
      guard let controller = XCTStoryboardsScene.Message.navCtrlScene.viewController() as? UINavigationController else {
        fatalError("ViewController 'NavCtrl' is not of the expected class UINavigationController.")
      }
      return controller
    }

    case urlChooserScene = "URLChooser"
    static func instantiateUrlChooser() -> XXPickerViewController {
      guard let controller = XCTStoryboardsScene.Message.urlChooserScene.viewController() as? XXPickerViewController else {
        fatalError("ViewController 'URLChooser' is not of the expected class XXPickerViewController.")
      }
      return controller
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case navigationScene = "Navigation"
    static func instantiateNavigation() -> UINavigationController {
      guard let controller = XCTStoryboardsScene.Placeholder.navigationScene.viewController() as? UINavigationController else {
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

    case acceptCGUScene = "Accept-CGU"
    static func instantiateAcceptCGU() -> UIViewController {
      return XCTStoryboardsScene.Wizard.acceptCGUScene.viewController()
    }

    case createAccountScene = "CreateAccount"
    static func instantiateCreateAccount() -> CreateAccViewController {
      guard let controller = XCTStoryboardsScene.Wizard.createAccountScene.viewController() as? CreateAccViewController else {
        fatalError("ViewController 'CreateAccount' is not of the expected class CreateAccViewController.")
      }
      return controller
    }

    case preferencesScene = "Preferences"
    static func instantiatePreferences() -> UITableViewController {
      guard let controller = XCTStoryboardsScene.Wizard.preferencesScene.viewController() as? UITableViewController else {
        fatalError("ViewController 'Preferences' is not of the expected class UITableViewController.")
      }
      return controller
    }

    case validatePasswordScene = "Validate_Password"
    static func instantiateValidatePassword() -> UIViewController {
      return XCTStoryboardsScene.Wizard.validatePasswordScene.viewController()
    }
  }
}

enum XCTStoryboardsSegue {
  enum AdditionalImport: String, StoryboardSegueType {
    case `private`
  }
  enum Message: String, StoryboardSegueType {
    case customBack = "CustomBack"
    case embed = "Embed"
    case nonCustom = "NonCustom"
    case showNavCtrl = "Show-NavCtrl"
  }
  enum Wizard: String, StoryboardSegueType {
    case showPassword = "ShowPassword"
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

private final class BundleToken {}
