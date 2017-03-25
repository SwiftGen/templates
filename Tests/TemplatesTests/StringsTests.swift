//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class StringsTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "defaults"]
  }

  // generate variations to test customname generation
  let variations: VariationGenerator = { name, context in
    guard name == "defaults" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["enumName=XCTLoc"]),
       suffix: "-customname")
    ]
  }

  func testDefault() {
    test(template: "strings-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .strings,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "strings-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .strings,
         contextVariations: variations)
  }

  func testNoCommentsSwift3() {
    test(template: "strings-no-comments-swift3",
         contextNames: Contexts.all,
         outputPrefix: "no-comments-swift3",
         directory: .strings,
         contextVariations: variations)
  }

  func testGenstrings() {
    test(template: "strings-genstrings",
         contextNames: Contexts.all,
         outputPrefix: "genstrings",
         directory: .strings,
         contextVariations: variations)
  }

  func testStructured() {
    test(template: "strings-structured",
         contextNames: Contexts.all,
         outputPrefix: "structured",
         directory: .strings,
         contextVariations: variations)
  }

  func testDotSyntax() {
    test(template: "strings-dot-syntax",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax",
         directory: .strings,
         contextVariations: variations)
  }

  func testDotSyntaxSwift3() {
    test(template: "strings-dot-syntax-swift3",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax-swift3",
         directory: .strings,
         contextVariations: variations)
  }
}
