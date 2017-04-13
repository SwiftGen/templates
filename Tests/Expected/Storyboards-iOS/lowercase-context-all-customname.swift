// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation
import UIKit
import CustomSegue
import LocationPicker
import SlackTextViewController

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length
// swiftlint:disable identifier_name

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: NSBundle(forClass: BundleToken.self))
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
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

enum XCTStoryboardsScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    static func initialViewController() -> LocationPicker.LocationPickerViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? LocationPicker.LocationPickerViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case `public`
    static func publicViewController() -> SlackTextViewController.SLKTextViewController {
      guard let vc = XCTStoryboardsScene.AdditionalImport.`public`.viewController() as? SlackTextViewController.SLKTextViewController
      else {
        fatalError("ViewController 'public' is not of the expected class SlackTextViewController.SLKTextViewController.")
      }
      return vc
    }
  }
  enum Anonymous: StoryboardSceneType {
    static let storyboardName = "Anonymous"

    static func initialViewController() -> UINavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum Dependency: String, StoryboardSceneType {
    static let storyboardName = "Dependency"

    case dependent = "Dependent"
    static func dependentViewController() -> UIViewController {
      return XCTStoryboardsScene.Dependency.dependent.viewController()
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case composer = "Composer"
    static func composerViewController() -> UIViewController {
      return XCTStoryboardsScene.Message.composer.viewController()
    }

    case messagesList = "MessagesList"
    static func messagesListViewController() -> UITableViewController {
      guard let vc = XCTStoryboardsScene.Message.messagesList.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return vc
    }

    case navCtrl = "NavCtrl"
    static func navCtrlViewController() -> UINavigationController {
      guard let vc = XCTStoryboardsScene.Message.navCtrl.viewController() as? UINavigationController
      else {
        fatalError("ViewController 'NavCtrl' is not of the expected class UINavigationController.")
      }
      return vc
    }

    case urlChooser = "URLChooser"
    static func urlChooserViewController() -> XXPickerViewController {
      guard let vc = XCTStoryboardsScene.Message.urlChooser.viewController() as? XXPickerViewController
      else {
        fatalError("ViewController 'URLChooser' is not of the expected class XXPickerViewController.")
      }
      return vc
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case navigation = "Navigation"
    static func navigationViewController() -> UINavigationController {
      guard let vc = XCTStoryboardsScene.Placeholder.navigation.viewController() as? UINavigationController
      else {
        fatalError("ViewController 'Navigation' is not of the expected class UINavigationController.")
      }
      return vc
    }
  }
  enum Wizard: String, StoryboardSceneType {
    static let storyboardName = "Wizard"

    static func initialViewController() -> CreateAccViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CreateAccViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case accept_CGU = "Accept-CGU"
    static func accept_CGUViewController() -> UIViewController {
      return XCTStoryboardsScene.Wizard.accept_CGU.viewController()
    }

    case createAccount = "CreateAccount"
    static func createAccountViewController() -> CreateAccViewController {
      guard let vc = XCTStoryboardsScene.Wizard.createAccount.viewController() as? CreateAccViewController
      else {
        fatalError("ViewController 'CreateAccount' is not of the expected class CreateAccViewController.")
      }
      return vc
    }

    case preferences = "Preferences"
    static func preferencesViewController() -> UITableViewController {
      guard let vc = XCTStoryboardsScene.Wizard.preferences.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'Preferences' is not of the expected class UITableViewController.")
      }
      return vc
    }

    case validate_Password = "Validate_Password"
    static func validate_PasswordViewController() -> UIViewController {
      return XCTStoryboardsScene.Wizard.validate_Password.viewController()
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

private final class BundleToken {}
