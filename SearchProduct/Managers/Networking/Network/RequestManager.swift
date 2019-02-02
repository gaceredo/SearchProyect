//
//  RequestManager.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//


import Moya
import SwiftyJSON
import Moya

typealias RequestCompletion = (JSON) -> Void
typealias RequestFailure = (ResponseError) -> Void

 class RequestManager: NSObject {
    
    var provider = MoyaProvider<RestApi>(plugins: [NetworkLoggerPlugin(verbose: true, responseDataFormatter: JSONResponseDataFormatter)])
    
    var requestHandlerCompletion: RequestCompletion = { _  in }
    var requestHandlerFailure: RequestFailure = { _ in }
    
    func buildRequest(target: RestApi,
                      requestHandlerCompletion: @escaping RequestCompletion,
                      requestHandlerFailure: @escaping RequestFailure) -> Cancellable {
        
        self.requestHandlerCompletion = requestHandlerCompletion
        self.requestHandlerFailure = requestHandlerFailure
        
        return provider.request(target) { result in
            Network.requestResult(target: target,
                                  result,
                                  self.requestHandlerCompletion,
                                  self.requestHandlerFailure)
        }
    }
    
    func requestCancellable(target: RestApi,
                            requestHandlerCompletion: @escaping RequestCompletion,
                            requestHandlerFailure: @escaping RequestFailure) -> Cancellable {
        
        return buildRequest(target: target,
                            requestHandlerCompletion: requestHandlerCompletion,
                            requestHandlerFailure: requestHandlerFailure)
    }
    
    func request(target: RestApi,
                 requestHandlerCompletion: @escaping RequestCompletion,
                 requestHandlerFailure: @escaping RequestFailure) {
        
        let _ = buildRequest(target: target,
                             requestHandlerCompletion: requestHandlerCompletion,
                             requestHandlerFailure: requestHandlerFailure)
    }
}
