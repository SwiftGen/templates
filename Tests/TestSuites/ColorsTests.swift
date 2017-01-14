//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest
import StencilSwiftKit

class ColorsTests: XCTestCase {
  static let rawOnlyContextNames = ["empty", "defaults", "customname"]
  static let allContextNames = rawOnlyContextNames + ["text-defaults"]
  
  func testDefault() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "colors-default.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ColorsTests.allContextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .colors)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "default-context-\(contextName).swift.out", sub: .colors)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testRawValue() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "colors-rawValue.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ColorsTests.rawOnlyContextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .colors)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "rawValue-context-\(contextName).swift.out", sub: .colors)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testSwift3() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "colors-swift3.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ColorsTests.allContextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .colors)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "swift3-context-\(contextName).swift.out", sub: .colors)
      
      XCTDiffStrings(result, expected)
    }
  }
}
