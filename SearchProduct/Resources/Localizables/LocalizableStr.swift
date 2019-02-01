//
//  LocalizableStr.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

enum LocalizableStrings {
    
    enum Errors: String, Localizable {
        
        case titleBadRequest = "TitleBadRequest"
        case titleUnauthorized = "TitleUnauthorized"
        case titleForbidden = "TitleForbidden"
        case titleNotFound = "TitleNotFound"
        case titleMethodNotFound = "TitleMethodNotFound"
        case titleConflict = "TitleConflict"
        case titlePreconditionFailed = "TitlePreconditionFailed"
        case titleUnprocessibleEntity = "TitleUnprocessibleEntity"
        case titleRateLimitExceeded = "TitleRateLimitExceeded"
        case titleServerError = "TitleServerError"
        case titleServiceUnavailable = "TitleServiceUnavailable"
        case titleGenericError = "TitleGenericError"
        
        case descriptionBadRequest = "DescriptionBadRequest"
        case descriptionUnauthorized = "DescriptionUnauthorized"
        case descriptionForbidden = "DescriptionForbidden"
        case descriptionNotFound = "DescriptionNotFound"
        case descriptionMethodNotFound = "DescriptionMethodNotFound"
        case descriptionConflict = "DescriptionConflict"
        case descriptionPreconditionFailed = "DescriptionPreconditionFailed"
        case descriptionUnprocessibleEntity = "DescriptionUnprocessibleEntity"
        case descriptionServerError = "DescriptionServerError"
        case descriptionServiceUnavailable = "DescriptionServiceUnavailable"
        case descriptionserviceUnavailable520 = "DescriptionserviceUnavailable520"
        case descriptionGenericError = "DescriptionGenericError"
    }
    
}
