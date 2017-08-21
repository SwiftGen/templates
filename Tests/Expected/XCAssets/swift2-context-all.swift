// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

@available(*, deprecated, renamed: "ImageAsset")
typealias AssetType = ImageAsset

struct ImageAsset {
  private var name: String

  var image: Image {
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX)
    let image = bundle.imageForResource(name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

struct ColorAsset {
  fileprivate var name: String
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
enum Asset {
  enum Colors {
    enum _24Vision {
      static let Background = ColorAsset(name: "24Vision/Background")
      static let Primary = ColorAsset(name: "24Vision/Primary")
    }
    static let Orange = ImageAsset(name: "Orange")
    enum Vengo {
      static let Primary = ColorAsset(name: "Vengo/Primary")
      static let Tint = ColorAsset(name: "Vengo/Tint")
    }

    // swiftlint:disable trailing_comma
    static let allColors: [ColorAsset] = [
      _24Vision.Background,
      _24Vision.Primary,
      Vengo.Primary,
      Vengo.Tint,
    ]
    static let allImages: [ImageAsset] = [
      Orange,
    ]
    // swiftlint:enable trailing_comma
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [AssetType] = allImages
  }
  enum Images {
    enum Exotic {
      static let Banana = ImageAsset(name: "Exotic/Banana")
      static let Mango = ImageAsset(name: "Exotic/Mango")
    }
    static let Private = ImageAsset(name: "private")
    enum Round {
      static let Apricot = ImageAsset(name: "Round/Apricot")
      enum Red {
        static let Apple = ImageAsset(name: "Round/Apple")
        enum Double {
          static let Cherry = ImageAsset(name: "Round/Double/Cherry")
        }
        static let Tomato = ImageAsset(name: "Round/Tomato")
      }
    }

    // swiftlint:disable trailing_comma
    static let allColors: [ColorAsset] = [
    ]
    static let allImages: [ImageAsset] = [
      Exotic.Banana,
      Exotic.Mango,
      Private,
      Round.Apricot,
      Round.Red.Apple,
      Round.Red.Double.Cherry,
      Round.Red.Tomato,
    ]
    // swiftlint:enable trailing_comma
    @available(*, deprecated, renamed: "allImages")
    static let allValues: [AssetType] = allImages
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = NSBundle(forClass: BundleToken.self)
    self.init(named: asset.name, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

private final class BundleToken {}
