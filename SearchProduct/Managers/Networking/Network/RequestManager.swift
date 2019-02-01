//
//  RequestManager.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//


import Moya
import SwiftyJSON

typealias RequestCompletion = (JSON, JSON) -> Void
typealias RequestFailure = (ResponseError) -> Void

open class RequestManager<Provider: TargetType>: NSObject {
    
    var provider = MoyaProvider<Provider>(plugins: [])
    
    var requestHandlerCompletion: RequestCompletion = { _,_  in }
    var requestHandlerFailure: RequestFailure = { _ in }
    
    func buildRequest(target: Provider,
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
    
    func requestCancellable(target: Provider,
                            requestHandlerCompletion: @escaping RequestCompletion,
                            requestHandlerFailure: @escaping RequestFailure) -> Cancellable {
        
        return buildRequest(target: target,
                            requestHandlerCompletion: requestHandlerCompletion,
                            requestHandlerFailure: requestHandlerFailure)
    }
    
    func request(target: Provider,
                 requestHandlerCompletion: @escaping RequestCompletion,
                 requestHandlerFailure: @escaping RequestFailure) {
        
        let _ = buildRequest(target: target,
                             requestHandlerCompletion: requestHandlerCompletion,
                             requestHandlerFailure: requestHandlerFailure)
    }
    
}
