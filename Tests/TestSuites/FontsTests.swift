//
//  FontsTests.swift
//  SwiftGen
//
//  Created by Derek Ostrander on 3/8/16.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import XCTest

class FontsTests: XCTestCase {
  static let contextNames = ["empty", "defaults", "customname"]

  func testDefault() {
    test(template: "fonts-default", contextNames: FontsTests.contextNames, outputPrefix: "default", directory: .fonts)
  }

  func testSwift3() {
    test(template: "fonts-swift3", contextNames: FontsTests.contextNames, outputPrefix: "swift3", directory: .fonts)
  }
}
