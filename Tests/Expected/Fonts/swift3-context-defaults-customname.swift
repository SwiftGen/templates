// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
  typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  typealias Font = UIFont
#endif

// swiftlint:disable file_length

protocol FontConvertible {
  func font(size: CGFloat) -> Font!
}

extension FontConvertible where Self: RawRepresentable, Self.RawValue == String {
  func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  func register() {
    let extensions = ["otf", "ttf"]
    let bundle = Bundle(for: BundleToken.self)

    guard let url = extensions.flatMap({ bundle.url(forResource: rawValue, withExtension: $0) }).first else {
      return
    }

    var errorRef: Unmanaged<CFError>?
    CTFontManagerRegisterFontsForURL(url as CFURL, .none, &errorRef)
  }
}

extension Font {
  convenience init!<FontType: FontConvertible>
    (font: FontType, size: CGFloat)
    where FontType: RawRepresentable, FontType.RawValue == String {
      #if os(iOS) || os(tvOS) || os(watchOS)
      if UIFont.fontNames(forFamilyName: font.rawValue).isEmpty {
        font.register()
      }
      #elseif os(OSX)
      if NSFontManager.shared().availableMembers(ofFontFamily: font.rawValue) == nil {
        font.register()
      }
      #endif

      self.init(name: font.rawValue, size: size)
  }
}

// swiftlint:disable identifier_name line_length type_body_length
enum CustomFamily {
  enum SFNSDisplay: String, FontConvertible {
    case black = ".SFNSDisplay-Black"
    case bold = ".SFNSDisplay-Bold"
    case heavy = ".SFNSDisplay-Heavy"
    case regular = ".SFNSDisplay-Regular"
  }
  enum SFNSText: String, FontConvertible {
    case bold = ".SFNSText-Bold"
    case heavy = ".SFNSText-Heavy"
    case regular = ".SFNSText-Regular"
  }
  enum Avenir: String, FontConvertible {
    case black = "Avenir-Black"
    case blackOblique = "Avenir-BlackOblique"
    case book = "Avenir-Book"
    case bookOblique = "Avenir-BookOblique"
    case heavy = "Avenir-Heavy"
    case heavyOblique = "Avenir-HeavyOblique"
    case light = "Avenir-Light"
    case lightOblique = "Avenir-LightOblique"
    case medium = "Avenir-Medium"
    case mediumOblique = "Avenir-MediumOblique"
    case oblique = "Avenir-Oblique"
    case roman = "Avenir-Roman"
  }
  enum ZapfDingbats: String, FontConvertible {
    case regular = "ZapfDingbatsITC"
  }
  enum Public: String, FontConvertible {
    case `internal` = "private"
  }
}
// swiftlint:enable identifier_name line_length type_body_length

private final class BundleToken {}
