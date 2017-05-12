//
//  DB6UIKitTests.swift
//  DB6Demo
//
//  Created by Eugene Yagrushkin on 2017-05-12.
//  Copyright © 2017 EYELabs. All rights reserved.
//

import XCTest
@testable import DB6Demo

class DB6UIKitTests: XCTestCase {
    
    var themeLoader = DB6ThemeLoader(themeFilename: "DB6Demo")
    var theme = DB6Theme.default
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUILabel(){
        
        let _ = DB6ThemeLoader(themeFilename: "DB6Demo")
        let label = UILabel()
        label.style = "UILabel"
        print(label.font)
        print(label.backgroundColor?.hexString() ?? "")
        print(label.textColor?.hexString() ?? "")
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
