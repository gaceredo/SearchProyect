//
//  HandlingErrorTest.swift
//  SearchProductTests
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import XCTest

class HandlingErrorTest: XCTestCase {

    func testBadRequest() {
        let statusCode: ResponseStatusCode = .badRequest
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.badRequest)
    }
    
    func testUnauthorized() {
        let statusCode: ResponseStatusCode = .unauthorized
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.unauthorized)
    }
    
    func testForbidden() {
        let statusCode: ResponseStatusCode = .forbidden
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.forbidden)
    }
    
    func testNotFound() {
        let statusCode: ResponseStatusCode = .notFound
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.notFound)
    }
    
    func testMethodNotFound() {
        let statusCode: ResponseStatusCode = .methodNotFound
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.methodNotFound)
    }
    
    func testConflict() {
        let statusCode: ResponseStatusCode = .conflict
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.conflict)
    }
    
    func testPreconditionFailed() {
        let statusCode: ResponseStatusCode = .preconditionFailed
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.preconditionFailed)
    }
    
    func testUnprocessibleEntity() {
        let statusCode: ResponseStatusCode = .unprocessibleEntity
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.unprocessibleEntity)
    }
    
    func testRateLimitExceeded() {
        let statusCode: ResponseStatusCode = .rateLimitExceeded
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.rateLimitExceeded)
    }
    
    func testServerError() {
        let statusCode: ResponseStatusCode = .serverError
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.serverError)
    }
    
    func testServiceUnavailableServerOverloaded503() {
        let statusCode: ResponseStatusCode = .serviceUnavailableServerOverloaded503
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.serviceUnavailableServerOverloaded503)
    }
    
    func testServiceUnavailableServerOverloaded504() {
        let statusCode: ResponseStatusCode = .serviceUnavailableServerOverloaded504
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.serviceUnavailableServerOverloaded504)
    }
    
    func testServiceUnavailable520() {
        let statusCode: ResponseStatusCode = .serviceUnavailable520
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.serviceUnavailable520)
    }
    
    func testServiceUnavailable521() {
        let statusCode: ResponseStatusCode = .serviceUnavailable521
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.serviceUnavailable521)
    }
    
    func testServiceUnavailable522() {
        let statusCode: ResponseStatusCode = .serviceUnavailable522
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.serviceUnavailable522)
    }
    
    func testCancelled() {
        let statusCode: ResponseStatusCode = .cancelled
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.cancelled)
    }
    
    func testGenericError() {
        let statusCode: ResponseStatusCode = .genericError
        let error: ResponseError = ResponseHandlingError.handlingError(statusCode: statusCode)
        XCTAssertTrue(error == ResponseError.genericError)
    }
    
    func testMethodGenericError() {
        let error: ResponseError = ResponseHandlingError.handlingGenericError()
        XCTAssertTrue(error == ResponseError.genericError)
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
