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

  func testDotSyntaxSwift2() {
    test(template: "dot-syntax-swift2",
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

  func testFlatSwift2() {
    test(template: "flat-swift2",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testFlatSwift3() {
    test(template: "flat-swift3",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }
}
