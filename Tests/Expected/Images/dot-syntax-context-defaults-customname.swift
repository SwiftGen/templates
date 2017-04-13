// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

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
// swiftlint:disable identifier_name
// swiftlint:disable type_body_length

struct XCTImagesType: StringLiteralConvertible {
  private var value: String

  var image: Image {
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS) || os(watchOS)
    let image = Image(named: value, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX)
    let image = bundle.imageForResource(value)
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

extension Image {
  convenience init!(asset: XCTImagesType) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    let bundle = NSBundle(forClass: BundleToken.self)
    self.init(named: asset.value, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX)
    self.init(named: asset.value)
    #endif
  }
}

private final class BundleToken {}
