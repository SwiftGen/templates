// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum XCTLoc {
  /// Some alert body there
  case alertMessage
  /// Title of the alert
  case alertTitle
  /// Hello, my name is %@ and I'm %d
  case greetings(String, Int)
  /// These are %3$@'s %1$d %2$@.
  case objectOwnership(Int, String, String)
  /// You have %d apples
  case applesCount(Int)
  /// Those %d bananas belong to %@.
  case bananasOwner(Int, String)
  /// Some Reserved Keyword there
  case settingsNavigationBarSelf
  /// Settings
  case settingsNavigationBarTitleEvenDeeper
  /// DeepSettings
  case settingsNavigationBarTitleEvenDeeperThanWeCanHandle
  /// Here you can change some user profile settings.
  case seTTingsUSerProFileSectioNFooterText
  /// User Profile Settings
  case settingsUserProfileSectionHeaderTitle
}
// swiftlint:enable type_body_length

extension XCTLoc: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .alertMessage:
        return XCTLoc.tr(key: "alert_message")
      case .alertTitle:
        return XCTLoc.tr(key: "alert_title")
      case .greetings(let p1, let p2):
        return XCTLoc.tr(key: "greetings", p1, p2)
      case .objectOwnership(let p1, let p2, let p3):
        return XCTLoc.tr(key: "ObjectOwnership", p1, p2, p3)
      case .applesCount(let p1):
        return XCTLoc.tr(key: "apples.count", p1)
      case .bananasOwner(let p1, let p2):
        return XCTLoc.tr(key: "bananas.owner", p1, p2)
      case .settingsNavigationBarSelf:
        return XCTLoc.tr(key: "settings.navigation-bar.self")
      case .settingsNavigationBarTitleEvenDeeper:
        return XCTLoc.tr(key: "settings.navigation-bar.title.even.deeper")
      case .settingsNavigationBarTitleEvenDeeperThanWeCanHandle:
        return XCTLoc.tr(key: "settings.navigation-bar.title.even.deeper.than.we.can.handle")
      case .seTTingsUSerProFileSectioNFooterText:
        return XCTLoc.tr(key: "seTTings.uSer-proFile-sectioN.footer_text")
      case .settingsUserProfileSectionHeaderTitle:
        return XCTLoc.tr(key: "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }

  private static func tr(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

func tr(_ key: XCTLoc) -> String {
  return key.string
}
