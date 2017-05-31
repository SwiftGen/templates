//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class ColorsTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "defaults", "multiple"]
  }

  // generate variations to test customname generation
  let variations: VariationGenerator = { name, context in
    guard name == "defaults" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["enumName=XCTColors"]),
       suffix: "-customname")
    ]
  }

  func testSwift2() {
    test(template: "swift2",
         contextNames: Contexts.all,
         directory: .colors,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .colors,
         contextVariations: variations)
  }
}
