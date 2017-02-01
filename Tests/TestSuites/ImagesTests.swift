//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class ImagesTests: XCTestCase {
  static let contextNames = ["empty", "defaults", "customname"]

  func testDefault() {
    test(template: "images-default", contextNames: ImagesTests.contextNames, outputPrefix: "default", directory: .images)
  }

  func testAllValues() {
    test(template: "images-allvalues", contextNames: ImagesTests.contextNames, outputPrefix: "allvalues", directory: .images)
  }

  func testSwift3() {
    test(template: "images-swift3", contextNames: ImagesTests.contextNames, outputPrefix: "swift3", directory: .images)
  }

  func testDotSyntax() {
    test(template: "images-dot-syntax", contextNames: ImagesTests.contextNames, outputPrefix: "dot-syntax", directory: .images)
  }

  func testDotSyntaxSwift3() {
    test(template: "images-dot-syntax-swift3", contextNames: ImagesTests.contextNames, outputPrefix: "dot-syntax-swift3", directory: .images)
  }
}
