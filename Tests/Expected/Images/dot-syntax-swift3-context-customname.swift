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

struct XCTImagesType: ExpressibleByStringLiteral {
  fileprivate var value: String

  var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS) || os(watchOS)
    return Image(named: value, in: bundle, compatibleWith: nil)!
    #elseif os(OSX)
    return bundle.image(forResource: value)!
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
    static let banana: XCTImagesType = "Exotic/Banana"
    static let mango: XCTImagesType = "Exotic/Mango"
  }
  static let `private`: XCTImagesType = "private"
  enum Round {
    static let apricot: XCTImagesType = "Round/Apricot"
    static let orange: XCTImagesType = "Round/Orange"
    enum Red {
      static let apple: XCTImagesType = "Round/Apple"
      enum Double {
        static let cherry: XCTImagesType = "Round/Double/Cherry"
      }
      static let tomato: XCTImagesType = "Round/Tomato"
    }
  }
}
// swiftlint:enable type_body_length

extension Image {
  convenience init!(asset: XCTImagesType) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.value, in: bundle, compatibleWith: nil)!
    #elseif os(OSX)
    self.init(named: asset.value)
    #endif
  }
}

private final class BundleToken {}
