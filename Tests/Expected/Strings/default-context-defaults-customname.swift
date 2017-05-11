// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum XCTLoc {
  /// Some alert body there
  case AlertMessage
  /// Title of the alert
  case AlertTitle
  /// These are %3$@'s %1$d %2$@.
  case ObjectOwnership(Int, String, String)
  /// Hello, my name is %@ and I'm %d
  case Private(String, Int)
  /// You have %d apples
  case ApplesCount(Int)
  /// Those %d bananas belong to %@.
  case BananasOwner(Int, String)
  /// Some Reserved Keyword there
  case SettingsNavigationBarSelf
  /// DeepSettings
  case SettingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep
  /// Settings
  case SettingsNavigationBarTitleEvenDeeper
  /// Here you can change some user profile settings.
  case SeTTingsUSerProFileSectioNFooterText
  /// User Profile Settings
  case SettingsUserProfileSectionHeaderTitle
}

extension XCTLoc: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .AlertMessage:
        return XCTLoc.tr("alert_message")
      case .AlertTitle:
        return XCTLoc.tr("alert_title")
      case .ObjectOwnership(let p1, let p2, let p3):
        return XCTLoc.tr("ObjectOwnership", p1, p2, p3)
      case .Private(let p1, let p2):
        return XCTLoc.tr("private", p1, p2)
      case .ApplesCount(let p1):
        return XCTLoc.tr("apples.count", p1)
      case .BananasOwner(let p1, let p2):
        return XCTLoc.tr("bananas.owner", p1, p2)
      case .SettingsNavigationBarSelf:
        return XCTLoc.tr("settings.navigation-bar.self")
      case .SettingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep:
        return XCTLoc.tr("settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
      case .SettingsNavigationBarTitleEvenDeeper:
        return XCTLoc.tr("settings.navigation-bar.title.even.deeper")
      case .SeTTingsUSerProFileSectioNFooterText:
        return XCTLoc.tr("seTTings.uSer-proFile-sectioN.footer_text")
      case .SettingsUserProfileSectionHeaderTitle:
        return XCTLoc.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }

  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}
// swiftlint:enable identifier_name line_length type_body_length

func tr(key: XCTLoc) -> String {
  return key.string
}

private final class BundleToken {}
