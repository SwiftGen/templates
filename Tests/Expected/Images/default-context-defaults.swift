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
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS) || os(watchOS)
    return Image(named: rawValue, inBundle: bundle, compatibleWithTraitCollection: nil)!
    #elseif os(OSX)
    return bundle.imageForResource(rawValue)!
    #endif
  }
}

// swiftlint:disable type_body_length
enum Asset: String, ImageConvertible {
  case Exotic_Banana = "Exotic/Banana"
  case Exotic_Mango = "Exotic/Mango"
  case Private = "private"
  case Round_Apricot = "Round/Apricot"
  case Round_Orange = "Round/Orange"
  case Round_Apple = "Round/Apple"
  case Round_Double_Cherry = "Round/Double/Cherry"
  case Round_Tomato = "Round/Tomato"
}
// swiftlint:enable type_body_length

private final class BundleToken {}
