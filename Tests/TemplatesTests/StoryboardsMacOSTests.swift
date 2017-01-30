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
    test(template: "osx-default",
         contextNames: Contexts.all,
         outputPrefix: "default",
         directory: .storyboards,
         resourceDirectory: .storyboardsMacOS)
  }

  func testSwift3() {
    test(template: "osx-swift3",
         contextNames: Contexts.all,
         outputPrefix: "swift3",
         directory: .storyboards,
         resourceDirectory: .storyboardsMacOS)
  }

  func testLowercase() {
    test(template: "osx-lowercase",
         contextNames: Contexts.all,
         outputPrefix: "lowercase",
         directory: .storyboards,
         resourceDirectory: .storyboardsMacOS)
  }
}
