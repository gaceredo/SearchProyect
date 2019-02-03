//
//  ResponseError.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

enum ResponseError: Error {
    case ok
    
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case methodNotFound
    case conflict
    case preconditionFailed
    case unprocessibleEntity
    case rateLimitExceeded
    
    case serverError
    case serviceUnavailableServerOverloaded503
    case serviceUnavailableServerOverloaded504
    case serviceUnavailable520
    case serviceUnavailable521
    case serviceUnavailable522
    
    case genericError
    case cancelled
    
    func title() -> String {
        switch self {
        case .badRequest:
            return LocalizableStrings.Errors.titleBadRequest.localized
        case .unauthorized:
            return LocalizableStrings.Errors.titleUnauthorized.localized
        case .forbidden:
            return LocalizableStrings.Errors.titleForbidden.localized
        case .notFound:
            return LocalizableStrings.Errors.titleNotFound.localized
        case .methodNotFound:
            return LocalizableStrings.Errors.titleMethodNotFound.localized
        case .conflict:
            return LocalizableStrings.Errors.titleConflict.localized
        case .preconditionFailed:
            return LocalizableStrings.Errors.titlePreconditionFailed.localized
        case .unprocessibleEntity:
            return LocalizableStrings.Errors.titleUnprocessibleEntity.localized
        case .rateLimitExceeded:
            return LocalizableStrings.Errors.titleRateLimitExceeded.localized
        case .serverError:
            return LocalizableStrings.Errors.titleServerError.localized
        case .serviceUnavailableServerOverloaded503,
             .serviceUnavailableServerOverloaded504,
             .serviceUnavailable520,
             .serviceUnavailable521,
             .serviceUnavailable522:
            return LocalizableStrings.Errors.titleServiceUnavailable.localized
        case .genericError:
            return LocalizableStrings.Errors.titleGenericError.localized
        default:
            return ""
        }
    }
    
    func description() -> String {
        switch self {
        case .badRequest:
            return LocalizableStrings.Errors.descriptionBadRequest.localized
        case .unauthorized:
            return LocalizableStrings.Errors.descriptionUnauthorized.localized
        case .forbidden:
            return LocalizableStrings.Errors.descriptionForbidden.localized
        case .notFound:
            return LocalizableStrings.Errors.descriptionNotFound.localized
        case .methodNotFound:
            return LocalizableStrings.Errors.descriptionMethodNotFound.localized
        case .conflict:
            return LocalizableStrings.Errors.descriptionConflict.localized
        case .preconditionFailed:
            return LocalizableStrings.Errors.descriptionPreconditionFailed.localized
        case .unprocessibleEntity:
            return LocalizableStrings.Errors.descriptionUnprocessibleEntity.localized
        case .serverError:
            return LocalizableStrings.Errors.descriptionServerError.localized
        case .serviceUnavailableServerOverloaded503,
             .serviceUnavailableServerOverloaded504:
            return LocalizableStrings.Errors.descriptionServiceUnavailable.localized
        case .serviceUnavailable520,
             .serviceUnavailable521,
             .serviceUnavailable522:
            return LocalizableStrings.Errors.descriptionserviceUnavailable520.localized
        default:
            return ""
        }
    }
}
