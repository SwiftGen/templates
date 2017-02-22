//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest
import StencilSwiftKit

class StoryboardsMacOSTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all"]
  }

  // generate variations to test target module matching and custom enum names
  let variations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }

    do {
      return [
        (context: context,
         suffix: ""),
        (context: try StencilContext.enrich(context: context,
                                            parameters: ["sceneEnumName=XCTStoryboardsScene",
                                                         "segueEnumName=XCTStoryboardsSegue"]),
         suffix: "-customname")
        (context: try StencilContext.enrich(context: context,
                                            parameters: [],
                                            environment: ["PRODUCT_MODULE_NAME": "Test"]),
         suffix: ""),
        (context: try StencilContext.enrich(context: context,
                                            parameters: [],
                                            environment: ["PRODUCT_MODULE_NAME": "FadeSegue"]),
         suffix: "-ignore-module"),
        (context: try StencilContext.enrich(context: context,
                                            parameters: ["module=Test"]),
         suffix: ""),
        (context: try StencilContext.enrich(context: context,
                                            parameters: ["module=FadeSegue"]),
         suffix: "-ignore-module")
      ]
    } catch {
      fatalError("Unable to create context variations")
    }
  }

  func testDefault() {
    test(template: "storyboards-osx-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .storyboardsMacOS,
         contextVariations: variations)
  }

  func testSwift3() {
    test(template: "storyboards-osx-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .storyboardsMacOS,
         contextVariations: variations)
  }

  func testLowercase() {
    test(template: "storyboards-osx-lowercase",
         contextNames: Contexts.all,
         outputPrefix: "lowercase",
         directory: .storyboardsMacOS,
         contextVariations: variations)
  }
}
