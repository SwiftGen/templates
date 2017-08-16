// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum L10n {
  static let alertMessage = L10n.tr("Localizable", "alert_message")
  static let alertTitle = L10n.tr("Localizable", "alert_title")
  static func objectOwnership(_ p1: Int, _ p2: String, _ p3: String) -> String {
    return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
  }
  static func `private`(_ p1: String, _ p2: Int) -> String {
    return L10n.tr("Localizable", "private", p1, p2)
  }
  static func applesCount(_ p1: Int) -> String {
    return L10n.tr("Localizable", "apples.count", p1)
  }
  static func bananasOwner(_ p1: Int, _ p2: String) -> String {
    return L10n.tr("Localizable", "bananas.owner", p1, p2)
  }
  static let settingsNavigationBarSelf = L10n.tr("Localizable", "settings.navigation-bar.self")
  static let settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep = L10n.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
  static let settingsNavigationBarTitleEvenDeeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
  static let seTTingsUSerProFileSectioNFooterText = L10n.tr("Localizable", "seTTings.uSer-proFile-sectioN.footer_text")
  static let settingsUserProfileSectionHeaderTitle = L10n.tr("Localizable", "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
}
// swiftlint:enable identifier_name line_length type_body_length

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
