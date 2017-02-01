//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class StoryboardsMacOSTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all", "customname"]
  }

  func testDefault() {
    test(template: "storyboards-osx-default", contextNames: Contexts.all, outputPrefix: "default", directory: .storyboardsMacOS)
  }

  func testSwift3() {
    test(template: "storyboards-osx-swift3", contextNames: Contexts.all, outputPrefix: "swift3", directory: .storyboardsMacOS)
  }

  func testLowercase() {
    test(template: "storyboards-osx-lowercase", contextNames: Contexts.all, outputPrefix: "lowercase", directory: .storyboardsMacOS)
  }
}
