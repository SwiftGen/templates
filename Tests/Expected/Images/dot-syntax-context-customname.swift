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

struct XCTImagesType: StringLiteralConvertible {
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
enum XCTImages {
  enum Exotic {
    static let Banana: XCTImagesType = "Exotic/Banana"
    static let Mango: XCTImagesType = "Exotic/Mango"
  }
  static let Private: XCTImagesType = "private"
  enum Round {
    static let Apricot: XCTImagesType = "Round/Apricot"
    static let Orange: XCTImagesType = "Round/Orange"
    enum Red {
      static let Apple: XCTImagesType = "Round/Apple"
      enum Double {
        static let Cherry: XCTImagesType = "Round/Double/Cherry"
      }
      static let Tomato: XCTImagesType = "Round/Tomato"
    }
  }
}
// swiftlint:enable type_body_length

private final class BundleToken {}
