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

  var image: UIImage {
    return UIImage(asset: self)
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
  static let lemon: XCTImagesType = "Lemon"
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
    self.init(named: asset.value)
  }
}
