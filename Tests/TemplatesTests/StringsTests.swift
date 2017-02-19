//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class StringsTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "defaults", "customname"]
  }

  func testDefault() {
    test(template: "default",
         contextNames: Contexts.all,
         directory: .strings)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .strings)
  }

  func testNoCommentsSwift3() {
    test(template: "no-comments-swift3",
         contextNames: Contexts.all,
         directory: .strings)
  }

  func testGenstrings() {
    test(template: "genstrings",
         contextNames: Contexts.all,
         directory: .strings)
  }

  func testStructured() {
    test(template: "structured",
         contextNames: Contexts.all,
         directory: .strings)
  }

  func testDotSyntax() {
    test(template: "dot-syntax",
         contextNames: Contexts.all,
         directory: .strings)
  }

  func testDotSyntaxSwift3() {
    test(template: "dot-syntax-swift3",
         contextNames: Contexts.all,
         directory: .strings)
  }
}
