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
         outputPrefix: "default",
         directory: .strings)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .strings)
  }

  func testNoCommentsSwift3() {
    test(template: "no-comments-swift3",
         contextNames: Contexts.all,
         outputPrefix: "no-comments-swift3",
         directory: .strings)
  }

  func testGenstrings() {
    test(template: "genstrings",
         contextNames: Contexts.all,
         outputPrefix: "genstrings",
         directory: .strings)
  }

  func testStructured() {
    test(template: "structured",
         contextNames: Contexts.all,
         outputPrefix: "structured",
         directory: .strings)
  }

  func testDotSyntax() {
    test(template: "dot-syntax",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax",
         directory: .strings)
  }

  func testDotSyntaxSwift3() {
    test(template: "dot-syntax-swift3",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax-swift3",
         directory: .strings)
  }
}
