// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length
// swiftlint:disable nesting
// swiftlint:disable identifier_name
// swiftlint:disable valid_docs
// swiftlint:disable type_name

enum XCTLoc {
  /// Some alert body there
  case AlertMessage
  /// Title of the alert
  case AlertTitle
  /// These are %3$@'s %1$d %2$@.
  case ObjectOwnership(Int, String, String)
  /// Hello, my name is %@ and I'm %d
  case Private(String, Int)

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

        case Deeper(DeeperXCTLoc)
        enum DeeperXCTLoc {

          case Than(ThanXCTLoc)
          enum ThanXCTLoc {

            case We(WeXCTLoc)
            enum WeXCTLoc {

              case Can(CanXCTLoc)
              enum CanXCTLoc {

                case Handle(HandleXCTLoc)
                enum HandleXCTLoc {

                  case No(NoXCTLoc)
                  enum NoXCTLoc {

                    case Really(ReallyXCTLoc)
                    enum ReallyXCTLoc {

                      case This(ThisXCTLoc)
                      enum ThisXCTLoc {

                        case Is(IsXCTLoc)
                        enum IsXCTLoc {
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

        case Even(EvenXCTLoc)
        enum EvenXCTLoc {
          /// Settings
          case Deeper
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
      case .ObjectOwnership(let p1, let p2, let p3):
        return XCTLoc.tr("ObjectOwnership", p1, p2, p3)
      case .Private(let p1, let p2):
        return XCTLoc.tr("private", p1, p2)
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
                                                        return XCTLoc.tr("settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
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
                        return XCTLoc.tr("settings.navigation-bar.title.even.deeper")
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
    let format = NSLocalizedString(key, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

func tr(key: XCTLoc) -> String {
  return key.string
}

private final class BundleToken {}
