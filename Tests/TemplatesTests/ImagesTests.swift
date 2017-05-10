//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class ImagesTests: XCTestCase {
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
                                          parameters: ["enumName=XCTImages"]),
       suffix: "-customname")
    ]
  }

  func testDefault() {
    test(template: "default",
         contextNames: Contexts.all,
         directory: .images,
         contextVariations: variations)
  }

  func testAllValues() {
    test(template: "allvalues",
         contextNames: Contexts.all,
         directory: .images,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .images,
         contextVariations: variations)
  }

  func testDotSyntax() {
    test(template: "dot-syntax",
         contextNames: Contexts.all,
         directory: .images,
         contextVariations: variations)
  }

  func testDotSyntaxSwift3() {
    test(template: "dot-syntax-swift3",
         contextNames: Contexts.all,
         directory: .images,
         contextVariations: variations)
  }
}
