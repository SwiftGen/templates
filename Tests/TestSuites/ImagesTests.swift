//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import XCTest
import StencilSwiftKit

class ImagesTests: XCTestCase {
  static let contextNames = ["empty", "defaults", "customname"]
  
  func testDefault() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "images-default.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ImagesTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .images)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "default-context-\(contextName).swift.out", sub: .images)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testAllValues() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "images-allvalues.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ImagesTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .images)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "allvalues-context-\(contextName).swift.out", sub: .images)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testSwift3() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "images-swift3.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ImagesTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .images)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "swift3-context-\(contextName).swift.out", sub: .images)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testDotSyntax() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "images-dot-syntax.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ImagesTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .images)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "dot-syntax-context-\(contextName).swift.out", sub: .images)
      
      XCTDiffStrings(result, expected)
    }
  }
  
  func testDotSyntaxSwift3() {
    let template = SwiftTemplate(templateString: Fixtures.template(for: "images-dot-syntax-swift3.stencil"), environment: stencilSwiftEnvironment())
    
    for contextName in ImagesTests.contextNames {
      print("Testing context '\(contextName)'...")
      
      let context = Fixtures.context(for: "\(contextName).plist", sub: .images)
      let result = try! template.render(context)
      let expected = Fixtures.output(for: "dot-syntax-swift3-context-\(contextName).swift.out", sub: .images)
      
      XCTDiffStrings(result, expected)
    }
  }
}
