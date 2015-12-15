//
//  StdGetRequestTests.swift
//  Rest
//
//  Created by Ryan Poplin on 12/13/15.
//  Copyright © 2015 Ryan Poplin. All rights reserved.
//

import XCTest
@testable import Rest

class StdApiRequestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // when writing unit tests, it's best to break things down to their most useful states...
    
    func testApiExistence() {
        var structDude = StdGetRequest()
        let thePost = structDude.testGetRequest()
        XCTAssertEqual(thePost, [String: AnyObject]())
    }
    
    func testGetRequest() {
        var structDude = StdGetRequest()
        let thePost = structDude.testGetRequest()
        XCTAssertEqual(thePost, [String: AnyObject]())
        if let postTitle = thePost["title"] as? String {
            XCTAssertNotNil(postTitle)
        }
    }
    
}