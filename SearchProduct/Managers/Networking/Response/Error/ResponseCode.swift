//
//  ResponseCode.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

enum ResponseStatusCode: Int {
    case ok = 200
    case badRequest = 400
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
    case methodNotFound = 405
    case conflict = 409
    case preconditionFailed = 412
    case unprocessibleEntity = 422
    case rateLimitExceeded = 429
    
    case serverError = 500
    case serviceUnavailableServerOverloaded503 = 503
    case serviceUnavailableServerOverloaded504 = 504
    case serviceUnavailable520 = 520
    case serviceUnavailable521 = 521
    case serviceUnavailable522 = 522
    case genericError = -998
    case cancelled = -999
    
    func isSuccess() -> Bool {
        switch self {
        case .ok:
            return true
        default:
            return false
        }
    }
}
