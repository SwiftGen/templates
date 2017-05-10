// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
enum L10n {
  /// Some alert body there
  static let AlertMessage = L10n.tr("alert_message")
  /// Title of the alert
  static let AlertTitle = L10n.tr("alert_title")
  /// These are %3$@'s %1$d %2$@.
  static func ObjectOwnership(p1: Int, p2: String, p3: String) -> String {
    return L10n.tr("ObjectOwnership", p1, p2, p3)
  }
  /// Hello, my name is %@ and I'm %d
  static func Private(p1: String, p2: Int) -> String {
    return L10n.tr("private", p1, p2)
  }

  enum Apples {
    /// You have %d apples
    static func Count(p1: Int) -> String {
      return L10n.tr("apples.count", p1)
    }
  }

  enum Bananas {
    /// Those %d bananas belong to %@.
    static func Owner(p1: Int, p2: String) -> String {
      return L10n.tr("bananas.owner", p1, p2)
    }
  }

  enum Settings {

    enum NavigationBar {
      /// Some Reserved Keyword there
      static let `Self` = L10n.tr("settings.navigation-bar.self")

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
                          static let Deep = L10n.tr("settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
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
          static let Deeper = L10n.tr("settings.navigation-bar.title.even.deeper")
        }
      }
    }

    enum UserProfileSection {
      /// Here you can change some user profile settings.
      static let FooterText = L10n.tr("seTTings.uSer-proFile-sectioN.footer_text")
      /// User Profile Settings
      static let HeaderTitle = L10n.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

private final class BundleToken {}
