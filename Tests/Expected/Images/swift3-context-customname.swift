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

protocol ImageConvertible {
  var image: Image { get }
}

extension ImageConvertible where Self: RawRepresentable, Self.RawValue == String {
  var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS) || os(watchOS)
    return Image(named: rawValue, in: bundle, compatibleWith: nil)!
    #elseif os(OSX)
    return bundle.image(forResource: rawValue)!
    #endif
  }
}

// swiftlint:disable type_body_length
enum XCTImages: String, ImageConvertible {
  case exoticBanana = "Exotic/Banana"
  case exoticMango = "Exotic/Mango"
  case `private` = "private"
  case roundApricot = "Round/Apricot"
  case roundOrange = "Round/Orange"
  case roundApple = "Round/Apple"
  case roundDoubleCherry = "Round/Double/Cherry"
  case roundTomato = "Round/Tomato"
}
// swiftlint:enable type_body_length

private final class BundleToken {}
