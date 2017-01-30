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
    test(template: "default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .images)
  }

  func testAllValues() {
    test(template: "allvalues",
         contextNames: Contexts.all,
         outputPrefix: "allvalues",
         directory: .images)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .images)
  }

  func testDotSyntax() {
    test(template: "dot-syntax",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax",
         directory: .images)
  }

  func testDotSyntaxSwift3() {
    test(template: "dot-syntax-swift3",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax-swift3",
         directory: .images)
  }
}
