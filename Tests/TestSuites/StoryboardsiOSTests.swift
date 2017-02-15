//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class StoryboardsiOSTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all", "customname"]
  }
  
  // generate variations to test target module matching
  static let variations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }
    
    return [
      (context: context, suffix: ""),
      (context: enrich(context, env: ["PRODUCT_MODULE_NAME": "Test"]), suffix: ""),
      (context: enrich(context, env: ["PRODUCT_MODULE_NAME": "CustomSegue"]), suffix: "-ignore-module"),
      (context: enrich(context, param: ["module": "Test"]), suffix: ""),
      (context: enrich(context, param: ["module": "CustomSegue"]), suffix: "-ignore-module")
    ]
  }

  func testDefault() {
    test(template: "storyboards-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }

  func testSwift3() {
    test(template: "storyboards-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }

  func testLowercase() {
    test(template: "storyboards-lowercase",
         contextNames: Contexts.all,
         outputPrefix: "lowercase",
         directory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }

  func testUppercase() {
    test(template: "storyboards-uppercase",
         contextNames: Contexts.all,
         outputPrefix: "uppercase",
         directory: .storyboardsiOS,
         contextVariations: StoryboardsiOSTests.variations)
  }
  
  private static func enrich(_ context: [String: Any], env: [String: Any]? = nil, param: [String: Any]? = nil) -> [String: Any] {
    var result = context
    
    if let env = env {
      result["env"] = env
    }
    if let param = param {
      result["param"] = param
    }
    
    return result
  }
}
