// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  typealias Color = UIColor
#endif

// swiftlint:disable file_length

enum XCTColors { }

// swiftlint:disable identifier_name line_length type_body_length
extension XCTColors {
  /// 0x339666ff (r: 20%, g: 58%, b: 40%, a: 100%)
  static let articleBody = #colorLiteral(red: 0.2, green: 0.588235, blue: 0.4, alpha: 1.0)
  /// 0xff66ccff (r: 100%, g: 40%, b: 80%, a: 100%)
  static let articleFootnote = #colorLiteral(red: 1.0, green: 0.4, blue: 0.8, alpha: 1.0)
  /// 0x33fe66ff (r: 20%, g: 99%, b: 40%, a: 100%)
  static let articleTitle = #colorLiteral(red: 0.2, green: 0.996078, blue: 0.4, alpha: 1.0)
  /// 0xffffffcc (r: 100%, g: 100%, b: 100%, a: 80%)
  static let `private` = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.8)
}
// swiftlint:enable identifier_name line_length type_body_length
