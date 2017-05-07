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
    test(template: "default",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testNoCommentsSwift3() {
    test(template: "no-comments-swift3",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testGenstrings() {
    test(template: "genstrings",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testStructured() {
    test(template: "structured",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testDotSyntax() {
    test(template: "dot-syntax",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testDotSyntaxSwift3() {
    test(template: "dot-syntax-swift3",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }
}
