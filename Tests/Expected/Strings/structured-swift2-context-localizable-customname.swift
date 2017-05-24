// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
enum XCTLoc {
  /// Some alert body there
  static let AlertMessage = XCTLoc.tr("alert_message")
  /// Title of the alert
  static let AlertTitle = XCTLoc.tr("alert_title")
  /// These are %3$@'s %1$d %2$@.
  static func ObjectOwnership(p1: Int, p2: String, p3: String) -> String {
    return XCTLoc.tr("ObjectOwnership", p1, p2, p3)
  }
  /// Hello, my name is %@ and I'm %d
  static func Private(p1: String, p2: Int) -> String {
    return XCTLoc.tr("private", p1, p2)
  }

  enum Apples {
    /// You have %d apples
    static func Count(p1: Int) -> String {
      return XCTLoc.tr("apples.count", p1)
    }
  }

  enum Bananas {
    /// Those %d bananas belong to %@.
    static func Owner(p1: Int, p2: String) -> String {
      return XCTLoc.tr("bananas.owner", p1, p2)
    }
  }

  enum Settings {

    enum NavigationBar {
      /// Some Reserved Keyword there
      static let `Self` = XCTLoc.tr("settings.navigation-bar.self")

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
                          static let Deep = XCTLoc.tr("settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
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
          static let Deeper = XCTLoc.tr("settings.navigation-bar.title.even.deeper")
        }
      }
    }

    enum UserProfileSection {
      /// Here you can change some user profile settings.
      static let FooterText = XCTLoc.tr("seTTings.uSer-proFile-sectioN.footer_text")
      /// User Profile Settings
      static let HeaderTitle = XCTLoc.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension XCTLoc {
  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

private final class BundleToken {}
