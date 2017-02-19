//
//  FontsTests.swift
//  SwiftGen
//
//  Created by Derek Ostrander on 3/8/16.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import XCTest

class FontsTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "defaults", "customname"]
  }

  func testDefault() {
    test(template: "default",
         contextNames: Contexts.all,
         directory: .fonts)
  }

  func testSwift3() {
    test(template: "swift3",
         contextNames: Contexts.all,
         directory: .fonts)
  }
}
