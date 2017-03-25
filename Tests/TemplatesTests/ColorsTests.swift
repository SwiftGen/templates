//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class ColorsTests: XCTestCase {
  enum Contexts {
    static let rawOnly = ["empty", "defaults"]
    static let all = rawOnly + ["text-defaults"]
  }

  // generate variations to test customname generation
  let variations: VariationGenerator = { name, context in
    guard name == "defaults" else { return [(context: context, suffix: "")] }

    do {
      return [
        (context: context,
         suffix: ""),
        (context: try StencilContext.enrich(context: context,
                                            parameters: ["enumName=XCTColors"]),
         suffix: "-customname")
      ]
    } catch {
      fatalError("Unable to create context variations")
    }
  }

  func testDefault() {
    test(template: "colors-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .colors,
         contextVariations: variations)
  }

  func testRawValue() {
    test(template: "colors-rawValue",
         contextNames: Contexts.rawOnly,
         outputPrefix: "rawValue",
         directory: .colors,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "colors-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .colors,
         contextVariations: variations)
  }
}
