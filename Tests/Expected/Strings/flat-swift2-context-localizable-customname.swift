// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum XCTLoc {
  /// Some alert body there
  static let AlertMessage = XCTLoc.tr("Localizable", "alert_message")
  /// Title of the alert
  static let AlertTitle = XCTLoc.tr("Localizable", "alert_title")
  /// These are %3$@'s %1$d %2$@.
  static func ObjectOwnership(p1: Int, p2: String, p3: String) -> String {
    return XCTLoc.tr("Localizable", "ObjectOwnership", p1, p2, p3)
  }
  /// Hello, my name is %@ and I'm %d
  static func Private(p1: String, p2: Int) -> String {
    return XCTLoc.tr("Localizable", "private", p1, p2)
  }
  /// You have %d apples
  static func ApplesCount(p1: Int) -> String {
    return XCTLoc.tr("Localizable", "apples.count", p1)
  }
  /// Those %d bananas belong to %@.
  static func BananasOwner(p1: Int, p2: String) -> String {
    return XCTLoc.tr("Localizable", "bananas.owner", p1, p2)
  }
  /// Some Reserved Keyword there
  static let SettingsNavigationBarSelf = XCTLoc.tr("Localizable", "settings.navigation-bar.self")
  /// DeepSettings
  static let SettingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep = XCTLoc.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
  /// Settings
  static let SettingsNavigationBarTitleEvenDeeper = XCTLoc.tr("Localizable", "settings.navigation-bar.title.even.deeper")
  /// Here you can change some user profile settings.
  static let SeTTingsUSerProFileSectioNFooterText = XCTLoc.tr("Localizable", "seTTings.uSer-proFile-sectioN.footer_text")
  /// User Profile Settings
  static let SettingsUserProfileSectionHeaderTitle = XCTLoc.tr("Localizable", "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
}
// swiftlint:enable identifier_name line_length type_body_length

extension XCTLoc {
  private static func tr(table: String, _ key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

private final class BundleToken {}
