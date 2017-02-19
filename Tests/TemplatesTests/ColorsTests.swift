//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class ColorsTests: XCTestCase {
  enum Contexts {
    static let rawOnly = ["empty", "defaults", "customname"]
    static let all = rawOnly + ["text-defaults"]
  }

  func testDefault() {
    test(template: "default",
         contextNames: Contexts.all,
         directory: .colors)
  }

  func testRawValue() {
    test(template: "rawValue",
         contextNames: Contexts.rawOnly,
         directory: .colors)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .colors)
  }
}
