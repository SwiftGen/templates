//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class ImagesTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "defaults", "customname"]
  }

  func testDefault() {
    test(template: "images-default", contextNames: Contexts.all, outputPrefix: "default", directory: .images)
  }

  func testAllValues() {
    test(template: "images-allvalues", contextNames: Contexts.all, outputPrefix: "allvalues", directory: .images)
  }

  func testSwift3() {
    test(template: "images-swift3", contextNames: Contexts.all, outputPrefix: "swift3", directory: .images)
  }

  func testDotSyntax() {
    test(template: "images-dot-syntax", contextNames: Contexts.all, outputPrefix: "dot-syntax", directory: .images)
  }

  func testDotSyntaxSwift3() {
    test(template: "images-dot-syntax-swift3", contextNames: Contexts.all, outputPrefix: "dot-syntax-swift3", directory: .images)
  }
}
