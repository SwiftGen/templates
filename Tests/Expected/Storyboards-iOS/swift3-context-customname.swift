// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit
import CustomSegue
import LocationPicker
import SlackTextViewController

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: nil)
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

enum XCTStoryboardsScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    static func initialViewController() -> LocationPicker.LocationPickerViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? LocationPicker.LocationPickerViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case publicScene = "public"
    static func instantiatePublic() -> SlackTextViewController.SLKTextViewController {
      guard let vc = XCTStoryboardsScene.AdditionalImport.publicScene.viewController() as? SlackTextViewController.SLKTextViewController
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
      guard let vc = XCTStoryboardsScene.Message.messagesListScene.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return vc
    }

    case navCtrlScene = "NavCtrl"
    static func instantiateNavCtrl() -> UINavigationController {
      guard let vc = XCTStoryboardsScene.Message.navCtrlScene.viewController() as? UINavigationController
      else {
        fatalError("ViewController 'NavCtrl' is not of the expected class UINavigationController.")
      }
      return vc
    }

    case urlChooserScene = "URLChooser"
    static func instantiateUrlChooser() -> XXPickerViewController {
      guard let vc = XCTStoryboardsScene.Message.urlChooserScene.viewController() as? XXPickerViewController
      else {
        fatalError("ViewController 'URLChooser' is not of the expected class XXPickerViewController.")
      }
      return vc
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case navigationScene = "Navigation"
    static func instantiateNavigation() -> UINavigationController {
      guard let vc = XCTStoryboardsScene.Placeholder.navigationScene.viewController() as? UINavigationController
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

    case acceptCGUScene = "Accept-CGU"
    static func instantiateAcceptCGU() -> UIViewController {
      return XCTStoryboardsScene.Wizard.acceptCGUScene.viewController()
    }

    case createAccountScene = "CreateAccount"
    static func instantiateCreateAccount() -> CreateAccViewController {
      guard let vc = XCTStoryboardsScene.Wizard.createAccountScene.viewController() as? CreateAccViewController
      else {
        fatalError("ViewController 'CreateAccount' is not of the expected class CreateAccViewController.")
      }
      return vc
    }

    case preferencesScene = "Preferences"
    static func instantiatePreferences() -> UITableViewController {
      guard let vc = XCTStoryboardsScene.Wizard.preferencesScene.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'Preferences' is not of the expected class UITableViewController.")
      }
      return vc
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
