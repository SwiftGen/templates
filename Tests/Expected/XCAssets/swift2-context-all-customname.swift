// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

struct XCTImagesType: StringLiteralConvertible {
  private var value: String

  var image: Image {
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: value, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX)
    let image = bundle.imageForResource(value)
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
  enum Colors {
    enum _24Vision {
      static let Background: XCTImagesType = "24Vision/Background"
      static let Primary: XCTImagesType = "24Vision/Primary"
    }
    enum Vengo {
      static let Primary: XCTImagesType = "Vengo/Primary"
      static let Tint: XCTImagesType = "Vengo/Tint"
    }

    static let allValues = [
      _24Vision.Background,
      _24Vision.Primary,
      Vengo.Primary,
      Vengo.Tint
    ]
  }
  enum Images {
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

    static let allValues = [
      Exotic.Banana,
      Exotic.Mango,
      Private,
      Round.Apricot,
      Round.Orange,
      Round.Red.Apple,
      Round.Red.Double.Cherry,
      Round.Red.Tomato
    ]
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  convenience init!(asset: XCTImagesType) {
    #if os(iOS) || os(tvOS)
    let bundle = NSBundle(forClass: BundleToken.self)
    self.init(named: asset.value, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.value)
    #endif
  }
}

private final class BundleToken {}
