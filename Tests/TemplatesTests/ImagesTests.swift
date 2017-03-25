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
    test(template: "images-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .images,
         contextVariations: variations)
  }

  func testAllValues() {
    test(template: "images-allvalues",
         contextNames: Contexts.all,
         outputPrefix: "allvalues",
         directory: .images,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "images-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .images,
         contextVariations: variations)
  }

  func testDotSyntax() {
    test(template: "images-dot-syntax",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax",
         directory: .images,
         contextVariations: variations)
  }

  func testDotSyntaxSwift3() {
    test(template: "images-dot-syntax-swift3",
         contextNames: Contexts.all,
         outputPrefix: "dot-syntax-swift3",
         directory: .images,
         contextVariations: variations)
  }
}
