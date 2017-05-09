// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable type_body_length
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
        let format = NSLocalizedString("alert_message", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
      case .AlertTitle:
        let format = NSLocalizedString("alert_title", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
      case .ObjectOwnership(let p1, let p2, let p3):
        let format = NSLocalizedString("ObjectOwnership", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format, p1, p2, p3)
      case .Private(let p1, let p2):
        let format = NSLocalizedString("private", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format, p1, p2)
      case .ApplesCount(let p1):
        let format = NSLocalizedString("apples.count", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format, p1)
      case .BananasOwner(let p1, let p2):
        let format = NSLocalizedString("bananas.owner", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format, p1, p2)
      case .SettingsNavigationBarSelf:
        let format = NSLocalizedString("settings.navigation-bar.self", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
      case .SettingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep:
        let format = NSLocalizedString("settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
      case .SettingsNavigationBarTitleEvenDeeper:
        let format = NSLocalizedString("settings.navigation-bar.title.even.deeper", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
      case .SeTTingsUSerProFileSectioNFooterText:
        let format = NSLocalizedString("seTTings.uSer-proFile-sectioN.footer_text", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
      case .SettingsUserProfileSectionHeaderTitle:
        let format = NSLocalizedString("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE", bundle: NSBundle(forClass: BundleToken.self), comment: "")
        return XCTLoc.tr(format)
    }
  }

  private static func tr(format: String, _ args: CVarArgType...) -> String {
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}
// swiftlint:enable identifier_name
// swiftlint:enable line_length
// swiftlint:enable type_body_length

func tr(key: XCTLoc) -> String {
  return key.string
}

private final class BundleToken {}
