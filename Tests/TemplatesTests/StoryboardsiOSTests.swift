//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest
import StencilSwiftKit

class StoryboardsiOSTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all", "customname"]
  }

  // generate variations to test target module matching
  static let variations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }

    do {
      return [
        (context: context,
         suffix: ""),
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
    } catch {
      fatalError("Unable to create context variations")
    }
  }

  func testDefault() {
    test(template: "default",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }

  func testLowercase() {
    test(template: "lowercase",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }

  func testUppercase() {
    test(template: "uppercase",
         contextNames: Contexts.all,
         directory: .storyboards,
         resourceDirectory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }
}
