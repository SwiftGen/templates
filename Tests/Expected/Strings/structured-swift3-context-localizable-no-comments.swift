// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
enum L10n {
  static let alertMessage = L10n.tr("Localizable", "alert_message")
  static let alertTitle = L10n.tr("Localizable", "alert_title")
  static func objectOwnership(_ p1: Int, _ p2: String, _ p3: String) -> String {
    return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
  }
  static func `private`(_ p1: String, _ p2: Int) -> String {
    return L10n.tr("Localizable", "private", p1, p2)
  }

  enum Apples {
    static func count(_ p1: Int) -> String {
      return L10n.tr("Localizable", "apples.count", p1)
    }
  }

  enum Bananas {
    static func owner(_ p1: Int, _ p2: String) -> String {
      return L10n.tr("Localizable", "bananas.owner", p1, p2)
    }
  }

  enum Settings {

    enum NavigationBar {
      static let `self` = L10n.tr("Localizable", "settings.navigation-bar.self")

      enum Title {

        enum Deeper {

          enum Than {

            enum We {

              enum Can {

                enum Handle {

                  enum No {

                    enum Really {

                      enum This {

                        enum Is {
                          static let deep = L10n.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        enum Even {
          static let deeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
        }
      }
    }

    enum UserProfileSection {
      static let footerText = L10n.tr("Localizable", "seTTings.uSer-proFile-sectioN.footer_text")
      static let headerTitle = L10n.tr("Localizable", "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
