//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class StoryboardsMacOSTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all"]
  }

  // generate variations to test customname generation
  let variations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["sceneEnumName=XCTStoryboardsScene",
                                                       "segueEnumName=XCTStoryboardsSegue"]),
       suffix: "-customname")
    ]
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
