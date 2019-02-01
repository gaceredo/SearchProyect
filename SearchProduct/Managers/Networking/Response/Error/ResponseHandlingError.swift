//
//  ResponseHandlingError.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class ResponseHandlingError {
    
    static func handlingError(statusCode: ResponseStatusCode) -> ResponseError {
        switch statusCode {
        case .badRequest:
            return .badRequest
        case .unauthorized:
            return .unauthorized
        case .forbidden:
            return .forbidden
        case .notFound:
            return .notFound
        case .methodNotFound:
            return .methodNotFound
        case .conflict:
            return .conflict
        case .preconditionFailed:
            return .preconditionFailed
        case .unprocessibleEntity:
            return .unprocessibleEntity
        case .rateLimitExceeded:
            return .rateLimitExceeded
        case .serverError:
            return .serverError
        case .serviceUnavailableServerOverloaded503:
            return .serviceUnavailableServerOverloaded503
        case .serviceUnavailableServerOverloaded504:
            return .serviceUnavailableServerOverloaded504
        case .serviceUnavailable520:
            return .serviceUnavailable520
        case .serviceUnavailable521:
            return .serviceUnavailable521
        case .serviceUnavailable522:
            return .serviceUnavailable522
        case .cancelled:
            return .cancelled
        default:
            return .genericError
        }
    }
    
    static func handlingGenericError() -> ResponseError {
        return .genericError
    }
}
