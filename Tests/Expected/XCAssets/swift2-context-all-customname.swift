// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias Color = NSColor
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Color = UIColor
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

@available(*, deprecated, renamed: "XCTImageAsset")
typealias XCTAssetsType = XCTImageAsset

struct XCTImageAsset {
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
}

struct XCTColorAsset {
  fileprivate var value: String

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  var color: Color {
    return Color(asset: self)
  }
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
enum XCTAssets {
  enum Colors {
    enum _24Vision {
      static let Background = XCTColorAsset(value: "24Vision/Background")
      static let Primary = XCTColorAsset(value: "24Vision/Primary")
    }
    enum Vengo {
      static let Primary = XCTColorAsset(value: "Vengo/Primary")
      static let Tint = XCTColorAsset(value: "Vengo/Tint")
    }

    static let allColors: [XCTColorAsset] = [
      _24Vision.Background,
      _24Vision.Primary,
      Vengo.Primary,
      Vengo.Tint
    ]
    static let allImages: [XCTImageAsset] = [
    ]
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [XCTAssetsType] = allImages
  }
  enum Images {
    enum Exotic {
      static let Banana = XCTImageAsset(value: "Exotic/Banana")
      static let Mango = XCTImageAsset(value: "Exotic/Mango")
    }
    static let Private = XCTImageAsset(value: "private")
    enum Round {
      static let Apricot = XCTImageAsset(value: "Round/Apricot")
      static let Orange = XCTImageAsset(value: "Round/Orange")
      enum Red {
        static let Apple = XCTImageAsset(value: "Round/Apple")
        enum Double {
          static let Cherry = XCTImageAsset(value: "Round/Double/Cherry")
        }
        static let Tomato = XCTImageAsset(value: "Round/Tomato")
      }
    }

    static let allColors: [XCTColorAsset] = [
    ]
    static let allImages: [XCTImageAsset] = [
      Exotic.Banana,
      Exotic.Mango,
      Private,
      Round.Apricot,
      Round.Orange,
      Round.Red.Apple,
      Round.Red.Double.Cherry,
      Round.Red.Tomato
    ]
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [XCTAssetsType] = allImages
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the XCTImageAsset.image property")
  convenience init!(asset: XCTImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = NSBundle(forClass: BundleToken.self)
    self.init(named: asset.value, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.value)
    #endif
  }
}

extension Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: XCTColorAsset) {
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.value, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX)
    self.init(named: asset.value, bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.value)
    #endif
  }
}

private final class BundleToken {}
