//
//  FontsTests.swift
//  SwiftGen
//
//  Created by Derek Ostrander on 3/8/16.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import XCTest
import StencilSwiftKit

class FontsTests: XCTestCase {
  static let contextNames = ["empty", "defaults", "customname"]
  
  func testDefault() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "fonts-default.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in FontsTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .fonts)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "default-context-\(contextName).swift.out", sub: .fonts)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testSwift3() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "fonts-swift3.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in FontsTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .fonts)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "swift3-context-\(contextName).swift.out", sub: .fonts)
      
      XCTDiffStrings(result, expected)
    }
  }
}
