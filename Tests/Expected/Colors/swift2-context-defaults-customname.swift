// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  typealias XCTColor = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  typealias XCTColor = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length

// swiftlint:disable superfluous_disable_command operator_usage_whitespace
extension XCTColor {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
// swiftlint:enable operator_usage_whitespace

// swiftlint:disable superfluous_disable_command identifier_name line_length type_body_length
struct XCTColors {
  let rgbaValue: UInt32
  var color: XCTColor { return XCTColor(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#339666"></span>
  /// Alpha: 100% <br/> (0x339666ff)
  static let ArticleBody = XCTColors(rgbaValue: 0x339666ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff66cc"></span>
  /// Alpha: 100% <br/> (0xff66ccff)
  static let ArticleFootnote = XCTColors(rgbaValue: 0xff66ccff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#33fe66"></span>
  /// Alpha: 100% <br/> (0x33fe66ff)
  static let ArticleTitle = XCTColors(rgbaValue: 0x33fe66ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 80% <br/> (0xffffffcc)
  static let Private = XCTColors(rgbaValue: 0xffffffcc)
}
// swiftlint:enable identifier_name line_length type_body_length

extension XCTColor {
  convenience init(named color: XCTColors) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
