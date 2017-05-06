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

    var themeLoader: DB6ThemeLoader?
    var theme: DB6Theme?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        themeLoader = DB6ThemeLoader(themeFilename: "DB6Demo")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testDB6ThemeLoader(){
        themeLoader = DB6ThemeLoader(themeFilename: "DB6Demo")
        theme = themeLoader?.default
        XCTAssertNotNil(themeLoader)
        XCTAssertNotNil(theme)
    }

    func testDB6ThemeTest(){
        theme = DB6Theme.default

        let stringKey="string"
        assert(theme?.string(key: stringKey) == stringKey)
        
        let intKey="integer"
        assert(theme?.integer(key: intKey) == 42)

        let boolKey="boolean"
        assert(theme?.bool(key: boolKey) == true)

        let colorKey = "colorHex"
        let color = theme?.color(key: colorKey)
        print(color)
        
        assert(color != nil)

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
