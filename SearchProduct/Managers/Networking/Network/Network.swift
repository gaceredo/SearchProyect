//
//  Network.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//


import UIKit
import Moya
import SwiftyJSON
import Result

struct Network {
    
    static func requestResult(target : TargetType,
                              _ result : Result<Moya.Response, MoyaError>,
                              _ successCallback : @escaping RequestCompletion,
                              _ failureCallback : @escaping RequestFailure) {
        switch result {
        case let .success(resultData):
            guard let responseCode = ResponseStatusCode(rawValue: resultData.statusCode) else {
                failureCallback(ResponseHandlingError.handlingGenericError())
                return
            }
            
            if responseCode.isSuccess() {
                do {
                    let responseDataJson = try JSON(data: resultData.data)
                    successCallback(responseDataJson)
                } catch {
                    failureCallback(ResponseHandlingError.handlingGenericError())
                }
            } else {
                failureCallback(ResponseHandlingError.handlingError(statusCode: responseCode))
            }
            
        case .failure(let error):
            if case .underlying(let swiftError, _) = error {
                let nsError = swiftError as NSError
                guard let responseCode = ResponseStatusCode(rawValue: nsError.code) else {
                    failureCallback(ResponseHandlingError.handlingGenericError())
                    return
                }
                failureCallback(ResponseHandlingError.handlingError(statusCode: responseCode))
            } else {
                failureCallback(ResponseHandlingError.handlingGenericError())
            }
        }
    }
}
