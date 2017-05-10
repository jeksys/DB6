//
//  DB6DemoTests.swift
//  DB6DemoTests
//
//  Created by Eugene Yagrushkin on 2017-05-05.
//  Copyright © 2017 EYELabs. All rights reserved.
//

import XCTest
@testable import DB6Demo

class DB6DemoTests: XCTestCase {

    var themeLoader = DB6ThemeLoader(themeFilename: "DB6Demo")
    var theme = DB6Theme.default
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
//        themeLoader = DB6ThemeLoader(themeFilename: "DB6Demo")
//        theme = DB6Theme.default
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testThemeLoader(){
        XCTAssertNotNil(themeLoader)
        XCTAssertNotNil(theme)
    }

    func testString(){
        let stringKey="string"
        let stringValue = theme?.string(key: stringKey)
        assert(stringValue == stringKey)
    }

    func testInteger(){
        let key="integer"
        let value = theme?.integer(key: key)
        assert(value == 42)
    }

    func testFloat(){
        let key="float"
        let value = theme?.float(key: key)
        assert(value == 2.71)
    }

    func testDouble(){
        let key="double"
        let value = theme?.double(key: key)
        assert(value == 3.14)
    }

    func testBool(){
        let key="boolean"
        let value = theme?.bool(key: key)
        assert(value == true)
    }
    
    func testColor(){
        let colorKey = "colorHex"
        let colorValue = theme?.color(key: colorKey)
        print(colorValue?.hexString() ?? "")
        
        assert(colorValue != nil)

    }
    
    func testUILabel(){
        
        let _ = DB6ThemeLoader(themeFilename: "DB6Demo")
        let label = UILabel()
        label.style = "UILabel"
        print(label.font)
        print(label.backgroundColor?.hexString() ?? "")
        print(label.textColor?.hexString() ?? "")
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
