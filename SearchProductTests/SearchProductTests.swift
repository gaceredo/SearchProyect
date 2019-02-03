//
//  SearchProductTests.swift
//  SearchProductTests
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import XCTest

class SearchProductTests: XCTestCase {

    
    override func setUp() {
        searchProductManager()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func searchProductManager() {
        
        let fetchExpectation = expectation(description: "loading")
        let parameters  = ["q":"Iphone 6"]
        
        SearchProductManager.shared.getSearchProduct(parameters: parameters, success: { (response) in
            XCTAssertNotNil(response)
            fetchExpectation.fulfill()
        }) {  (error) in
            XCTFail("test API fail")
        }
        waitForExpectations(timeout: 10, handler: nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
