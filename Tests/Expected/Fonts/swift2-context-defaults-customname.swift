// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
  typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  typealias Font = UIFont
#endif

// swiftlint:disable file_length

struct FontConvertible {
  let name: String
  let family: String
  let path: String

  func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  func register() {
    let bundle = NSBundle(forClass: BundleToken.self)

    guard let url = bundle.URLForResource(path, withExtension: nil) else {
      return
    }

    var errorRef: Unmanaged<CFError>?
    CTFontManagerRegisterFontsForURL(url as CFURL, .Process, &errorRef)
  }
}

extension Font {
  convenience init!(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if UIFont.fontNamesForFamilyName(font.family).isEmpty {
      font.register()
    }
    #elseif os(OSX)
    if NSFontManager.sharedFontManager().availableMembersOfFontFamily(font.family) == nil {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
  }
}

// swiftlint:disable identifier_name line_length type_body_length
enum CustomFamily {
  enum SFNSDisplay {
    static let Black = FontConvertible(".SFNSDisplay-Black", family: ".SF NS Display", path: "SFNSDisplay-Black.otf")
    static let Bold = FontConvertible(".SFNSDisplay-Bold", family: ".SF NS Display", path: "SFNSDisplay-Bold.otf")
    static let Heavy = FontConvertible(".SFNSDisplay-Heavy", family: ".SF NS Display", path: "SFNSDisplay-Heavy.otf")
    static let Regular = FontConvertible(".SFNSDisplay-Regular", family: ".SF NS Display", path: "SFNSDisplay-Regular.otf")
  }
  enum SFNSText {
    static let Bold = FontConvertible(".SFNSText-Bold", family: ".SF NS Text", path: "SFNSText-Bold.otf")
    static let Heavy = FontConvertible(".SFNSText-Heavy", family: ".SF NS Text", path: "SFNSText-Heavy.otf")
    static let Regular = FontConvertible(".SFNSText-Regular", family: ".SF NS Text", path: "SFNSText-Regular.otf")
  }
  enum Avenir {
    static let Black = FontConvertible("Avenir-Black", family: "Avenir", path: "Avenir.ttc")
    static let BlackOblique = FontConvertible("Avenir-BlackOblique", family: "Avenir", path: "Avenir.ttc")
    static let Book = FontConvertible("Avenir-Book", family: "Avenir", path: "Avenir.ttc")
    static let BookOblique = FontConvertible("Avenir-BookOblique", family: "Avenir", path: "Avenir.ttc")
    static let Heavy = FontConvertible("Avenir-Heavy", family: "Avenir", path: "Avenir.ttc")
    static let HeavyOblique = FontConvertible("Avenir-HeavyOblique", family: "Avenir", path: "Avenir.ttc")
    static let Light = FontConvertible("Avenir-Light", family: "Avenir", path: "Avenir.ttc")
    static let LightOblique = FontConvertible("Avenir-LightOblique", family: "Avenir", path: "Avenir.ttc")
    static let Medium = FontConvertible("Avenir-Medium", family: "Avenir", path: "Avenir.ttc")
    static let MediumOblique = FontConvertible("Avenir-MediumOblique", family: "Avenir", path: "Avenir.ttc")
    static let Oblique = FontConvertible("Avenir-Oblique", family: "Avenir", path: "Avenir.ttc")
    static let Roman = FontConvertible("Avenir-Roman", family: "Avenir", path: "Avenir.ttc")
  }
  enum ZapfDingbats {
    static let Regular = FontConvertible("ZapfDingbatsITC", family: "Zapf Dingbats", path: "ZapfDingbats.ttf")
  }
  enum Public {
    static let Internal = FontConvertible("private", family: "public", path: "class.ttf")
  }
}
// swiftlint:enable identifier_name line_length type_body_length

private final class BundleToken {}
