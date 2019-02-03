//
//  RestApi.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit
import Moya

enum RestApi {
    case searchProduct(withParameters: [String: String])
    case detailsSearchProduct(withIdProduct: String)
    case descriptionSearchProduct(withIdProduct:String)
}

extension RestApi: TargetType {
    
    // implement user token if necessary
    var headers: [String : String]? {
        return nil
    }
    
    public var baseURL: URL {
        return URL(string: RouterBase.serverURL())!
    }
    
    public var path: String {
        //the specific path for each url
        switch self {
            
        case .searchProduct(_):
            return RouterURL.searchProduct()
        case .detailsSearchProduct(let id):
            return RouterURL.detailsSearchProduct(id)
        case .descriptionSearchProduct(let id):
            return RouterURL.descriptionSearchProduct(id)
        }
    }
    public var shouldAuthorize: Bool { // should be false only for the app init
        return true
    }
    
    public var sampleData: Data {
        return "{}".data(using: .utf8)!
    }
    
    public var task: Task {
        switch self {
        case .searchProduct(let param):
            return .requestParameters(parameters: param, encoding: URLEncoding.default)
        default:
            return .requestPlain
        }
    }
    
    public var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }
}

//in moya sample is used like this, have to investigate  more
public func url(_ route: TargetType) -> String {
    return route.baseURL.appendingPathComponent(route.path).absoluteString
}
