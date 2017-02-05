// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

#if os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#elseif os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#endif

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable nesting

struct AssetType: StringLiteralConvertible {
  private var value: String

  var image: Image {
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS) || os(watchOS)
    return Image(named: rawValue, inBundle: bundle, compatibleWithTraitCollection: nil)!
    #elseif os(OSX)
    return bundle.imageForResource(rawValue)!
    #endif
  }

  init(stringLiteral value: String) {
    self.value = value
  }

  init(extendedGraphemeClusterLiteral value: String) {
    self.init(stringLiteral: value)
  }

  init(unicodeScalarLiteral value: String) {
    self.init(stringLiteral: value)
  }
}

// swiftlint:disable type_body_length
enum Asset {
  enum Exotic {
    static let Banana: AssetType = "Exotic/Banana"
    static let Mango: AssetType = "Exotic/Mango"
  }
  static let Private: AssetType = "private"
  enum Round {
    static let Apricot: AssetType = "Round/Apricot"
    static let Orange: AssetType = "Round/Orange"
    enum Red {
      static let Apple: AssetType = "Round/Apple"
      enum Double {
        static let Cherry: AssetType = "Round/Double/Cherry"
      }
      static let Tomato: AssetType = "Round/Tomato"
    }
  }
}
// swiftlint:enable type_body_length

private final class BundleToken {}
