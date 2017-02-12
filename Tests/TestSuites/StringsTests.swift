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
    test(template: "strings-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .strings)
  }

  func testSwift3() {
    test(template: "strings-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .strings)
  }

  func testNoCommentsSwift3() {
    test(template: "strings-no-comments-swift3",
         contextNames: Contexts.all,
         outputPrefix: "no-comments-swift3",
         directory: .strings)
  }

  func testGenstrings() {
    test(template: "strings-genstrings",
         contextNames: Contexts.all,
         outputPrefix: "genstrings",
         directory: .strings)
  }

  func testStructured() {
    test(template: "strings-structured",
         contextNames: Contexts.all,
         outputPrefix: "structured",
         directory: .strings)
  }

  func testDotSyntax() {
    test(template: "strings-dot-syntax",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax",
         directory: .strings)
  }

  func testDotSyntaxSwift3() {
    test(template: "strings-dot-syntax-swift3",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax-swift3",
         directory: .strings)
  }
}
