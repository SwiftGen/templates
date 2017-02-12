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

  func testDefault() {
    test(template: "storyboards-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .storyboardsiOS)
  }

  func testSwift3() {
    test(template: "storyboards-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .storyboardsiOS)
  }

  func testLowercase() {
    test(template: "storyboards-lowercase",
         contextNames: Contexts.all,
         outputPrefix: "lowercase",
         directory: .storyboardsiOS)
  }

  func testUppercase() {
    test(template: "storyboards-uppercase",
         contextNames: Contexts.all,
         outputPrefix: "uppercase",
         directory: .storyboardsiOS)
  }
}
