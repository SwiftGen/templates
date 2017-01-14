//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest

class ColorsTests: XCTestCase {
  static let rawOnlyContextNames = ["empty", "defaults", "customname"]
  static let allContextNames = rawOnlyContextNames + ["text-defaults"]
  
  func testDefault() {
    test(template: "colors-default", contextNames: ColorsTests.allContextNames, outputPrefix: "default", directory: .colors)
  }
  
  func testRawValue() {
    test(template: "colors-rawValue", contextNames: ColorsTests.rawOnlyContextNames, outputPrefix: "rawValue", directory: .colors)
  }
  
  func testSwift3() {
    test(template: "colors-swift3", contextNames: ColorsTests.allContextNames, outputPrefix: "swift3", directory: .colors)
  }
}
