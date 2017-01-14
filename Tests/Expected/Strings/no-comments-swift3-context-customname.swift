// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum XCTLoc {
  case alertMessage
  case alertTitle
  case applesCount(Int)
  case bananasOwner(Int, String)
  case greetings(String, Int)
  case objectOwnership(Int, String, String)
  case settingsNavigationBarSelf
  case settingsNavigationBarTitleEvenDeeper
  case settingsNavigationBarTitleEvenDeeperThanWeCanHandle
  case seTTingsUSerProFileSectioNFooterText
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
      case .applesCount(let p0):
        return XCTLoc.tr(key: "apples.count", p0)
      case .bananasOwner(let p0, let p1):
        return XCTLoc.tr(key: "bananas.owner", p0, p1)
      case .greetings(let p0, let p1):
        return XCTLoc.tr(key: "greetings", p0, p1)
      case .objectOwnership(let p0, let p1, let p2):
        return XCTLoc.tr(key: "ObjectOwnership", p0, p1, p2)
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

