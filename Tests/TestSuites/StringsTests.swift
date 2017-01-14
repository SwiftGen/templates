//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class StringsTests: XCTestCase {
  static let contextNames = ["empty", "defaults", "customname"]
  
  func testDefault() {
    test(template: "strings-default", contextNames: StringsTests.contextNames, outputPrefix: "default", directory: .strings)
  }
  
  func testSwift3() {
    test(template: "strings-swift3", contextNames: StringsTests.contextNames, outputPrefix: "swift3", directory: .strings)
  }
  
  func testNoCommentsSwift3() {
    test(template: "strings-no-comments-swift3", contextNames: StringsTests.contextNames, outputPrefix: "no-comments-swift3", directory: .strings)
  }
  
  func testGenstrings() {
    test(template: "strings-genstrings", contextNames: StringsTests.contextNames, outputPrefix: "genstrings", directory: .strings)
  }
  
  func testStructured() {
    test(template: "strings-structured", contextNames: StringsTests.contextNames, outputPrefix: "structured", directory: .strings)
  }
  
  func testDotSyntax() {
    test(template: "strings-dot-syntax", contextNames: StringsTests.contextNames, outputPrefix: "dot-syntax", directory: .strings)
  }
  
  func testDotSyntaxSwift3() {
    test(template: "strings-dot-syntax-swift3", contextNames: StringsTests.contextNames, outputPrefix: "dot-syntax-swift3", directory: .strings)
  }
}
