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

@available(*, deprecated, renamed: "ImageAsset")
typealias AssetType = ImageAsset

struct ImageAsset {
  fileprivate var value: String

  var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: value, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: NSImage.Name(value))
    #elseif os(watchOS)
    let image = Image(named: value)
    #endif
    guard let result = image else { fatalError("Unable to load image \(value).") }
    return result
  }
}

struct ColorAsset {
  fileprivate var value: String

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  var color: Color {
    return Color(asset: self)
  }
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
enum Asset {
  enum Colors {
    enum _24Vision {
      static let background = ColorAsset(value: "24Vision/Background")
      static let primary = ColorAsset(value: "24Vision/Primary")
    }
    enum Vengo {
      static let primary = ColorAsset(value: "Vengo/Primary")
      static let tint = ColorAsset(value: "Vengo/Tint")
    }
  }
  enum Images {
    enum Exotic {
      static let banana = ImageAsset(value: "Exotic/Banana")
      static let mango = ImageAsset(value: "Exotic/Mango")
    }
    static let `private` = ImageAsset(value: "private")
    enum Round {
      static let apricot = ImageAsset(value: "Round/Apricot")
      static let orange = ImageAsset(value: "Round/Orange")
      enum Red {
        static let apple = ImageAsset(value: "Round/Apple")
        enum Double {
          static let cherry = ImageAsset(value: "Round/Double/Cherry")
        }
        static let tomato = ImageAsset(value: "Round/Tomato")
      }
    }
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.value, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSImage.Name(asset.value))
    #elseif os(watchOS)
    self.init(named: asset.value)
    #endif
  }
}

extension Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.value, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSColor.Name(asset.value), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.value)
    #endif
  }
}

private final class BundleToken {}
