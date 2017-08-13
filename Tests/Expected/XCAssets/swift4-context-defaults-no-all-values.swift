// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

struct AssetType: ExpressibleByStringLiteral {
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
enum Asset {
  enum Exotic {
    static let banana: AssetType = "Exotic/Banana"
    static let mango: AssetType = "Exotic/Mango"
  }
  static let `private`: AssetType = "private"
  enum Round {
    static let apricot: AssetType = "Round/Apricot"
    static let orange: AssetType = "Round/Orange"
    enum Red {
      static let apple: AssetType = "Round/Apple"
      enum Double {
        static let cherry: AssetType = "Round/Double/Cherry"
      }
      static let tomato: AssetType = "Round/Tomato"
    }
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

extension Image {
  convenience init!(asset: AssetType) {
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

private final class BundleToken {}
