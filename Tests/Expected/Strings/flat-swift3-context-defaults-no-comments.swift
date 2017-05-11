// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum L10n {
  case alertMessage
  case alertTitle
  case objectOwnership(Int, String, String)
  case `private`(String, Int)
  case applesCount(Int)
  case bananasOwner(Int, String)
  case settingsNavigationBarSelf
  case settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep
  case settingsNavigationBarTitleEvenDeeper
  case seTTingsUSerProFileSectioNFooterText
  case settingsUserProfileSectionHeaderTitle
}

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .alertMessage:
        return L10n.tr(key: "alert_message")
      case .alertTitle:
        return L10n.tr(key: "alert_title")
      case .objectOwnership(let p1, let p2, let p3):
        return L10n.tr(key: "ObjectOwnership", p1, p2, p3)
      case .`private`(let p1, let p2):
        return L10n.tr(key: "private", p1, p2)
      case .applesCount(let p1):
        return L10n.tr(key: "apples.count", p1)
      case .bananasOwner(let p1, let p2):
        return L10n.tr(key: "bananas.owner", p1, p2)
      case .settingsNavigationBarSelf:
        return L10n.tr(key: "settings.navigation-bar.self")
      case .settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep:
        return L10n.tr(key: "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
      case .settingsNavigationBarTitleEvenDeeper:
        return L10n.tr(key: "settings.navigation-bar.title.even.deeper")
      case .seTTingsUSerProFileSectioNFooterText:
        return L10n.tr(key: "seTTings.uSer-proFile-sectioN.footer_text")
      case .settingsUserProfileSectionHeaderTitle:
        return L10n.tr(key: "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }

  private static func tr(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}
// swiftlint:enable identifier_name line_length type_body_length

func tr(_ key: L10n) -> String {
  return key.string
}

private final class BundleToken {}
