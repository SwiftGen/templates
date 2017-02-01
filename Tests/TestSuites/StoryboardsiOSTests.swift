//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class StoryboardsiOSTests: XCTestCase {
  static let contextNames = ["empty", "all", "customname"]

  func testDefault() {
    test(template: "storyboards-default", contextNames: StoryboardsiOSTests.contextNames, outputPrefix: "default", directory: .storyboardsiOS)
  }

  func testSwift3() {
    test(template: "storyboards-swift3", contextNames: StoryboardsiOSTests.contextNames, outputPrefix: "swift3", directory: .storyboardsiOS)
  }

  func testLowercase() {
    test(template: "storyboards-lowercase", contextNames: StoryboardsiOSTests.contextNames, outputPrefix: "lowercase", directory: .storyboardsiOS)
  }

  func testUppercase() {
    test(template: "storyboards-uppercase", contextNames: StoryboardsiOSTests.contextNames, outputPrefix: "uppercase", directory: .storyboardsiOS)
  }
}
