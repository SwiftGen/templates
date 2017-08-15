// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

struct XCTImagesType: ExpressibleByStringLiteral {
  fileprivate var value: String

  var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: value, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: value)
    #elseif os(watchOS)
    let image = Image(named: value)
    #endif
    guard let result = image else { fatalError("Unable to load image \(value).") }
    return result
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

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
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

  static let allValues: [XCTImagesType] = [
    Exotic.banana,
    Exotic.mango,
    `private`,
    Round.apricot,
    Round.orange,
    Round.Red.apple,
    Round.Red.Double.cherry,
    Round.Red.tomato
  ]
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  convenience init!(asset: XCTImagesType) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.value, in: bundle, compatibleWith: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.value)
    #endif
  }
}

private final class BundleToken {}
