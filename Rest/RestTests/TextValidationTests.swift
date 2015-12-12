//
//  TextValidationTests.swift
//  Rest
//
//  Created by Ryan Poplin on 12/12/15.
//  Copyright © 2015 Ryan Poplin. All rights reserved.
//

import XCTest
@testable import Rest

class TextValidationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // keep the Target Membership of testable classes in mind!
    func testAgencyTrue() {
        let validation = TextValidation()
        XCTAssertTrue(validation.validateString("\(2)"))
    }
    
    func testAgencyFalse() {
        let validation = TextValidation()
        XCTAssertFalse(validation.validateString("hel-o6"))
    }
    
    // other useful testing methods from XCTest...
    // http://masteringswift.blogspot.com/2015/07/swift-2-and-unit-testing.html
    
}