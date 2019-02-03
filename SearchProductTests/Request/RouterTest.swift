//
//  RouterTest.swift
//  SearchProductTests
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import XCTest
@testable import Pods_SearchProduct

class RouterTest: XCTestCase {

    enum Constants {
        static let baseURLPath = "https://api.mercadolibre.com/"
        static let descriptionItems = "items/MLU459277313/description"
        static let items = "MLU459277313"
        static let detailsSearch = "items/MLU459277313"
    }
    
    func testBaseUrl() {
        let url = RouterBase.serverURL()
        XCTAssertEqual(url, Constants.baseURLPath)
    }
    
    func testDescriptionItems() {
        let url = RouterURL.descriptionSearchProduct(Constants.items)
        XCTAssertNotNil(url)
        XCTAssertEqual(url, Constants.descriptionItems)
    }
    
    func testDetailsSeaechItems() {
        let url = RouterURL.detailsSearchProduct(Constants.items)
        XCTAssertNotNil(url)
        XCTAssertEqual(url, Constants.detailsSearch)
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
