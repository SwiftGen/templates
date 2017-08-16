// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
enum L10n {
  /// Some alert body there
  static let alertMessage = L10n.tr("Localizable", "alert_message")
  /// Title of the alert
  static let alertTitle = L10n.tr("Localizable", "alert_title")
  /// These are %3$@'s %1$d %2$@.
  static func objectOwnership(_ p1: Int, _ p2: String, _ p3: String) -> String {
    return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
  }
  /// Hello, my name is %@ and I'm %d
  static func `private`(_ p1: String, _ p2: Int) -> String {
    return L10n.tr("Localizable", "private", p1, p2)
  }

  enum Apples {
    /// You have %d apples
    static func count(_ p1: Int) -> String {
      return L10n.tr("Localizable", "apples.count", p1)
    }
  }

  enum Bananas {
    /// Those %d bananas belong to %@.
    static func owner(_ p1: Int, _ p2: String) -> String {
      return L10n.tr("Localizable", "bananas.owner", p1, p2)
    }
  }

  enum Settings {

    enum NavigationBar {
      /// Some Reserved Keyword there
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
                          /// DeepSettings
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
          /// Settings
          static let deeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
        }
      }
    }

    enum UserProfileSection {
      /// Here you can change some user profile settings.
      static let footerText = L10n.tr("Localizable", "seTTings.uSer-proFile-sectioN.footer_text")
      /// User Profile Settings
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
