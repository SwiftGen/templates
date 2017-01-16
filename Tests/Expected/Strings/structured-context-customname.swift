// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
// swiftlint:disable nesting

enum XCTLoc {
  /// Some alert body there
  case AlertMessage
  /// Title of the alert
  case AlertTitle
  /// Hello, my name is %@ and I'm %d
  case Greetings(String, Int)
  /// These are %3$@'s %1$d %2$@.
  case ObjectOwnership(Int, String, String)

  case Apples(ApplesXCTLoc)
  enum ApplesXCTLoc {
    /// You have %d apples
    case Count(Int)
  }

  case Bananas(BananasXCTLoc)
  enum BananasXCTLoc {
    /// Those %d bananas belong to %@.
    case Owner(Int, String)
  }

  case Settings(SettingsXCTLoc)
  enum SettingsXCTLoc {

    case NavigationBar(NavigationBarXCTLoc)
    enum NavigationBarXCTLoc {
      /// Some Reserved Keyword there
      case `Self`

      case Title(TitleXCTLoc)
      enum TitleXCTLoc {

        case Even(EvenXCTLoc)
        enum EvenXCTLoc {
          /// Settings
          case Deeper

          case Deeper(DeeperXCTLoc)
          enum DeeperXCTLoc {

            case Than(ThanXCTLoc)
            enum ThanXCTLoc {

              case We(WeXCTLoc)
              enum WeXCTLoc {

                case Can(CanXCTLoc)
                enum CanXCTLoc {
                  /// DeepSettings
                  case Handle
                }
              }
            }
          }
        }
      }
    }

    case UserProfileSection(UserProfileSectionXCTLoc)
    enum UserProfileSectionXCTLoc {
      /// Here you can change some user profile settings.
      case FooterText
      /// User Profile Settings
      case HeaderTitle
    }
  }
}

extension XCTLoc: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .AlertMessage:
        return XCTLoc.tr("alert_message")
      case .AlertTitle:
        return XCTLoc.tr("alert_title")
      case .Greetings(let p1, let p2):
        return XCTLoc.tr("greetings", p1, p2)
      case .ObjectOwnership(let p1, let p2, let p3):
        return XCTLoc.tr("ObjectOwnership", p1, p2, p3)
      case .Apples(let levelSubKeyApples):

        switch levelSubKeyApples {
          case .Count(let p1):
            return XCTLoc.tr("apples.count", p1)
        }
      case .Bananas(let levelSubKeyBananas):

        switch levelSubKeyBananas {
          case .Owner(let p1, let p2):
            return XCTLoc.tr("bananas.owner", p1, p2)
        }
      case .Settings(let levelSubKeySettings):

        switch levelSubKeySettings {
          case .NavigationBar(let levelSubSubKeyNavigationBar):

            switch levelSubSubKeyNavigationBar {
              case .`Self`:
                return XCTLoc.tr("settings.navigation-bar.self")
              case .Title(let levelSubSubSubKeyTitle):

                switch levelSubSubSubKeyTitle {
                  case .Even(let levelSubSubSubSubKeyEven):

                    switch levelSubSubSubSubKeyEven {
                      case .Deeper:
                        return XCTLoc.tr("settings.navigation-bar.title.even.deeper")
                      case .Deeper(let levelSubSubSubSubSubKeyDeeper):

                        switch levelSubSubSubSubSubKeyDeeper {
                          case .Than(let levelSubSubSubSubSubSubKeyThan):

                            switch levelSubSubSubSubSubSubKeyThan {
                              case .We(let levelSubSubSubSubSubSubSubKeyWe):

                                switch levelSubSubSubSubSubSubSubKeyWe {
                                  case .Can(let levelSubSubSubSubSubSubSubSubKeyCan):

                                    switch levelSubSubSubSubSubSubSubSubKeyCan {
                                      case .Handle:
                                        return XCTLoc.tr("settings.navigation-bar.title.even.deeper.than.we.can.handle")
                                    }
                                }
                            }
                        }
                    }
                }
            }
          case .UserProfileSection(let levelSubSubKeyUserProfileSection):

            switch levelSubSubKeyUserProfileSection {
              case .FooterText:
                return XCTLoc.tr("seTTings.uSer-proFile-sectioN.footer_text")
              case .HeaderTitle:
                return XCTLoc.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
            }
        }
    }
  }

  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

// swiftlint:enable type_body_length
// swiftlint:enable nesting

func tr(key: XCTLoc) -> String {
  return key.string
}

