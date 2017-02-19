// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  typealias Font = UIFont
#elseif os(OSX)
  import AppKit.NSFont
  typealias Font = NSFont
#endif

// swiftlint:disable file_length
// swiftlint:disable line_length

protocol FontConvertible {
  func font(size: CGFloat) -> Font!
}

extension FontConvertible where Self: RawRepresentable, Self.RawValue == String {
  func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  func register() {
    let extensions = ["otf", "ttf"]
    let bundle = NSBundle(forClass: BundleToken.self)

    guard let url = extensions.flatMap({ bundle.URLForResource(rawValue, withExtension: $0) }).first else { return }

    var errorRef: Unmanaged<CFError>?
    CTFontManagerRegisterFontsForURL(url as CFURL, .None, &errorRef)
  }
}

extension Font {
  convenience init!<FontType: FontConvertible
    where FontType: RawRepresentable, FontType.RawValue == String>
    (font: FontType, size: CGFloat) {
      #if os(iOS) || os(tvOS) || os(watchOS)
      if UIFont.fontNamesForFamilyName(font.rawValue).isEmpty {
        font.register()
      }
      #elseif os(OSX)
      if NSFontManager.sharedFontManager().availableMembersOfFontFamily(font.rawValue) == nil {
        font.register()
      }
      #endif

      self.init(name: font.rawValue, size: size)
  }
}

enum FontFamily {
  enum SFNSDisplay: String, FontConvertible {
    case Black = ".SFNSDisplay-Black"
    case Bold = ".SFNSDisplay-Bold"
    case Heavy = ".SFNSDisplay-Heavy"
    case Regular = ".SFNSDisplay-Regular"
  }
  enum SFNSText: String, FontConvertible {
    case Bold = ".SFNSText-Bold"
    case Heavy = ".SFNSText-Heavy"
    case Regular = ".SFNSText-Regular"
  }
  enum Avenir: String, FontConvertible {
    case Black = "Avenir-Black"
    case BlackOblique = "Avenir-BlackOblique"
    case Book = "Avenir-Book"
    case BookOblique = "Avenir-BookOblique"
    case Heavy = "Avenir-Heavy"
    case HeavyOblique = "Avenir-HeavyOblique"
    case Light = "Avenir-Light"
    case LightOblique = "Avenir-LightOblique"
    case Medium = "Avenir-Medium"
    case MediumOblique = "Avenir-MediumOblique"
    case Oblique = "Avenir-Oblique"
    case Roman = "Avenir-Roman"
  }
  enum ZapfDingbats: String, FontConvertible {
    case Regular = "ZapfDingbatsITC"
  }
  enum Public: String, FontConvertible {
    case Internal = "private"
  }
}

private final class BundleToken {}
