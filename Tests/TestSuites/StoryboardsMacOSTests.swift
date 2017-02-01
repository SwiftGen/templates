//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class StoryboardsMacOSTests: XCTestCase {
  static let contextNames = ["empty", "all", "customname"]

  func testDefault() {
    test(template: "storyboards-osx-default", contextNames: StoryboardsMacOSTests.contextNames, outputPrefix: "default", directory: .storyboardsMacOS)
  }

  func testSwift3() {
    test(template: "storyboards-osx-swift3", contextNames: StoryboardsMacOSTests.contextNames, outputPrefix: "swift3", directory: .storyboardsMacOS)
  }

  func testLowercase() {
    test(template: "storyboards-osx-lowercase", contextNames: StoryboardsMacOSTests.contextNames, outputPrefix: "lowercase", directory: .storyboardsMacOS)
  }
}
