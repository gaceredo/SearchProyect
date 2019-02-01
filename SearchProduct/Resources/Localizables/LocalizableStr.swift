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
    
    enum Placeholders: String, Localizable {
        case titleEmptyPlaceholder = "titleEmptyPlaceholder"
        case descriptionEmptyPlaceholder = "descriptionEmptyPlaceholder"
        case buttonEmptyPlaceholder = "buttonEmptyPlaceholder"
        case titleNoSearchResultsPlaceholder = "titleNoSearchResultsPlaceholder"
        case descriptionNoSearchResultsPlaceholder = "descriptionNoSearchResultsPlaceholder"
        case buttonNoSearchResultsPlaceholder = "buttonNoSearchResultsPlaceholder"
    }
    
    enum MovieScreen: String, Localizable {
        case titleScreen = "titleMovieScreen"
        case settingsScreen = "settingsScreen"
    }
    
    enum SearchScreen: String, Localizable {
        case titleScreen = "titleMovieSearchScreen"
    }
    
    enum PageError: String, Localizable {
        case titlePageError = "titlePageError"
        case messagePageError = "messagePageError"
        case titleButtonPageError = "titleButtonPageError"
    }
    
    enum ImageServiceAlert: String, Localizable {
        case titleError = "titleImageService"
        case messageError = "messageImageService"
        case CancelButtonError = "CancelImageService"
    }
    
}
