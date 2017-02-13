// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
// swiftlint:disable nesting

enum L10n {
  /// Some alert body there
  case AlertMessage
  /// Title of the alert
  case AlertTitle
  /// These are %3$@'s %1$d %2$@.
  case ObjectOwnership(Int, String, String)
  /// Hello, my name is %@ and I'm %d
  case Private(String, Int)

  case Apples(ApplesL10n)
  enum ApplesL10n {
    /// You have %d apples
    case Count(Int)
  }

  case Bananas(BananasL10n)
  enum BananasL10n {
    /// Those %d bananas belong to %@.
    case Owner(Int, String)
  }

  case Settings(SettingsL10n)
  enum SettingsL10n {

    case NavigationBar(NavigationBarL10n)
    enum NavigationBarL10n {
      /// Some Reserved Keyword there
      case `Self`

      case Title(TitleL10n)
      enum TitleL10n {

        case Deeper(DeeperL10n)
        enum DeeperL10n {

          case Than(ThanL10n)
          enum ThanL10n {

            case We(WeL10n)
            enum WeL10n {

              case Can(CanL10n)
              enum CanL10n {

                case Handle(HandleL10n)
                enum HandleL10n {

                  case No(NoL10n)
                  enum NoL10n {

                    case Really(ReallyL10n)
                    enum ReallyL10n {

                      case This(ThisL10n)
                      enum ThisL10n {

                        case Is(IsL10n)
                        enum IsL10n {
                          /// DeepSettings
                          case Deep
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        case Even(EvenL10n)
        enum EvenL10n {
          /// Settings
          case Deeper
        }
      }
    }

    case UserProfileSection(UserProfileSectionL10n)
    enum UserProfileSectionL10n {
      /// Here you can change some user profile settings.
      case FooterText
      /// User Profile Settings
      case HeaderTitle
    }
  }
}

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .AlertMessage:
        return L10n.tr("alert_message")
      case .AlertTitle:
        return L10n.tr("alert_title")
      case .ObjectOwnership(let p1, let p2, let p3):
        return L10n.tr("ObjectOwnership", p1, p2, p3)
      case .Private(let p1, let p2):
        return L10n.tr("private", p1, p2)
      case .Apples(let levelSubKeyApples):

        switch levelSubKeyApples {
          case .Count(let p1):
            return L10n.tr("apples.count", p1)
        }
      case .Bananas(let levelSubKeyBananas):

        switch levelSubKeyBananas {
          case .Owner(let p1, let p2):
            return L10n.tr("bananas.owner", p1, p2)
        }
      case .Settings(let levelSubKeySettings):

        switch levelSubKeySettings {
          case .NavigationBar(let levelSubSubKeyNavigationBar):

            switch levelSubSubKeyNavigationBar {
              case .`Self`:
                return L10n.tr("settings.navigation-bar.self")
              case .Title(let levelSubSubSubKeyTitle):

                switch levelSubSubSubKeyTitle {
                  case .Deeper(let levelSubSubSubSubKeyDeeper):

                    switch levelSubSubSubSubKeyDeeper {
                      case .Than(let levelSubSubSubSubSubKeyThan):

                        switch levelSubSubSubSubSubKeyThan {
                          case .We(let levelSubSubSubSubSubSubKeyWe):

                            switch levelSubSubSubSubSubSubKeyWe {
                              case .Can(let levelSubSubSubSubSubSubSubKeyCan):

                                switch levelSubSubSubSubSubSubSubKeyCan {
                                  case .Handle(let levelSubSubSubSubSubSubSubSubKeyHandle):

                                    switch levelSubSubSubSubSubSubSubSubKeyHandle {
                                      case .No(let levelSubSubSubSubSubSubSubSubSubKeyNo):

                                        switch levelSubSubSubSubSubSubSubSubSubKeyNo {
                                          case .Really(let levelSubSubSubSubSubSubSubSubSubSubKeyReally):

                                            switch levelSubSubSubSubSubSubSubSubSubSubKeyReally {
                                              case .This(let levelSubSubSubSubSubSubSubSubSubSubSubKeyThis):

                                                switch levelSubSubSubSubSubSubSubSubSubSubSubKeyThis {
                                                  case .Is(let levelSubSubSubSubSubSubSubSubSubSubSubSubKeyIs):

                                                    switch levelSubSubSubSubSubSubSubSubSubSubSubSubKeyIs {
                                                      case .Deep:
                                                        return L10n.tr("settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                  case .Even(let levelSubSubSubSubKeyEven):

                    switch levelSubSubSubSubKeyEven {
                      case .Deeper:
                        return L10n.tr("settings.navigation-bar.title.even.deeper")
                    }
                }
            }
          case .UserProfileSection(let levelSubSubKeyUserProfileSection):

            switch levelSubSubKeyUserProfileSection {
              case .FooterText:
                return L10n.tr("seTTings.uSer-proFile-sectioN.footer_text")
              case .HeaderTitle:
                return L10n.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
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

func tr(key: L10n) -> String {
  return key.string
}
