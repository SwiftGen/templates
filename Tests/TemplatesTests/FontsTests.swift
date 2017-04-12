//
//  FontsTests.swift
//  SwiftGen
//
//  Created by Derek Ostrander on 3/8/16.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import StencilSwiftKit
import XCTest

class FontsTests: XCTestCase {
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
                                          parameters: ["enumName=CustomFamily"]),
       suffix: "-customname")
    ]
  }

  func testDefault() {
    test(template: "fonts-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .fonts,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "fonts-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .fonts,
         contextVariations: variations)
  }
}
