//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class StoryboardsiOSTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all"]
  }

  // generate variations to test target module matching and custom enum names
  let variations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["sceneEnumName=XCTStoryboardsScene",
                                                       "segueEnumName=XCTStoryboardsSegue"]),
       suffix: "-customname"),
      (context: try StencilContext.enrich(context: context,
                                          parameters: [],
                                          environment: ["PRODUCT_MODULE_NAME": "Test"]),
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: [],
                                          environment: ["PRODUCT_MODULE_NAME": "CustomSegue"]),
       suffix: "-ignore-module"),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["module=Test"]),
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["module=CustomSegue"]),
       suffix: "-ignore-module")
    ]
  }

  func testDefault() {
    test(template: "default",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: variations)
  }

  func testLowercase() {
    test(template: "lowercase",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: variations)
  }

  func testUppercase() {
    test(template: "uppercase",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: variations)
  }
}
