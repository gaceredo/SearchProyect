//
//  ResponseStatusCodeTest.swift
//  SearchProductTests
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import XCTest

class ResponseStatusCodeTest: XCTestCase {

    func testOk() {
        let statusCode: ResponseStatusCode = .ok
        XCTAssertTrue(statusCode.rawValue == 200)
    }
    
    func testBadRequest() {
        let statusCode: ResponseStatusCode = .badRequest
        XCTAssertTrue(statusCode.rawValue == 400)
    }
    
    func testUnauthorized() {
        let statusCode: ResponseStatusCode = .unauthorized
        XCTAssertTrue(statusCode.rawValue == 401)
    }
    
    func testForbidden() {
        let statusCode: ResponseStatusCode = .forbidden
        XCTAssertTrue(statusCode.rawValue == 403)
    }
    
    func testNotFound() {
        let statusCode: ResponseStatusCode = .notFound
        XCTAssertTrue(statusCode.rawValue == 404)
    }
    
    func testMethodNotFound() {
        let statusCode: ResponseStatusCode = .methodNotFound
        XCTAssertTrue(statusCode.rawValue == 405)
    }
    
    func testConflict() {
        let statusCode: ResponseStatusCode = .conflict
        XCTAssertTrue(statusCode.rawValue == 409)
    }
    
    func testPreconditionFailed() {
        let statusCode: ResponseStatusCode = .preconditionFailed
        XCTAssertTrue(statusCode.rawValue == 412)
    }
    
    func testUnprocessibleEntity() {
        let statusCode: ResponseStatusCode = .unprocessibleEntity
        XCTAssertTrue(statusCode.rawValue == 422)
    }
    
    func testRateLimitExceeded() {
        let statusCode: ResponseStatusCode = .rateLimitExceeded
        XCTAssertTrue(statusCode.rawValue == 429)
    }
    
    func testServerError() {
        let statusCode: ResponseStatusCode = .serverError
        XCTAssertTrue(statusCode.rawValue == 500)
    }
    
    func testServiceUnavailableServerOverloaded503() {
        let statusCode: ResponseStatusCode = .serviceUnavailableServerOverloaded503
        XCTAssertTrue(statusCode.rawValue == 503)
    }
    
    func testServiceUnavailableServerOverloaded504() {
        let statusCode: ResponseStatusCode = .serviceUnavailableServerOverloaded504
        XCTAssertTrue(statusCode.rawValue == 504)
    }
    
    func testServiceUnavailable520() {
        let statusCode: ResponseStatusCode = .serviceUnavailable520
        XCTAssertTrue(statusCode.rawValue == 520)
    }
    
    func testServiceUnavailable521() {
        let statusCode: ResponseStatusCode = .serviceUnavailable521
        XCTAssertTrue(statusCode.rawValue == 521)
    }
    
    func testServiceUnavailable522() {
        let statusCode: ResponseStatusCode = .serviceUnavailable522
        XCTAssertTrue(statusCode.rawValue == 522)
    }
    
    func testCancelled() {
        let statusCode: ResponseStatusCode = .cancelled
        XCTAssertTrue(statusCode.rawValue == -999)
    }
    
    func testGenericError() {
        let statusCode: ResponseStatusCode = .genericError
        XCTAssertTrue(statusCode.rawValue == -998)
    }
    
    func testSuccess() {
        let statusCode: ResponseStatusCode = .ok
        XCTAssertTrue(statusCode.isSuccess())
    }
    
    func testNotSuccess() {
        let statusCode: ResponseStatusCode = .badRequest
        XCTAssertFalse(statusCode.isSuccess())
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
