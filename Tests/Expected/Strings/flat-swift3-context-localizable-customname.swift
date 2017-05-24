// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum XCTLoc {
  /// Some alert body there
  case alertMessage
  /// Title of the alert
  case alertTitle
  /// These are %3$@'s %1$d %2$@.
  case objectOwnership(Int, String, String)
  /// Hello, my name is %@ and I'm %d
  case `private`(String, Int)
  /// You have %d apples
  case applesCount(Int)
  /// Those %d bananas belong to %@.
  case bananasOwner(Int, String)
  /// Some Reserved Keyword there
  case settingsNavigationBarSelf
  /// DeepSettings
  case settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep
  /// Settings
  case settingsNavigationBarTitleEvenDeeper
  /// Here you can change some user profile settings.
  case seTTingsUSerProFileSectioNFooterText
  /// User Profile Settings
  case settingsUserProfileSectionHeaderTitle
}

extension XCTLoc: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .alertMessage:
        return XCTLoc.tr(key: "alert_message")
      case .alertTitle:
        return XCTLoc.tr(key: "alert_title")
      case .objectOwnership(let p1, let p2, let p3):
        return XCTLoc.tr(key: "ObjectOwnership", p1, p2, p3)
      case .`private`(let p1, let p2):
        return XCTLoc.tr(key: "private", p1, p2)
      case .applesCount(let p1):
        return XCTLoc.tr(key: "apples.count", p1)
      case .bananasOwner(let p1, let p2):
        return XCTLoc.tr(key: "bananas.owner", p1, p2)
      case .settingsNavigationBarSelf:
        return XCTLoc.tr(key: "settings.navigation-bar.self")
      case .settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep:
        return XCTLoc.tr(key: "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
      case .settingsNavigationBarTitleEvenDeeper:
        return XCTLoc.tr(key: "settings.navigation-bar.title.even.deeper")
      case .seTTingsUSerProFileSectioNFooterText:
        return XCTLoc.tr(key: "seTTings.uSer-proFile-sectioN.footer_text")
      case .settingsUserProfileSectionHeaderTitle:
        return XCTLoc.tr(key: "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }

  private static func tr(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}
// swiftlint:enable identifier_name line_length type_body_length

func tr(_ key: XCTLoc) -> String {
  return key.string
}

private final class BundleToken {}
