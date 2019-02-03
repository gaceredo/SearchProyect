//
//  SearchProductManager.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class SearchProductManager {
    
    static let shared: SearchProductManager = SearchProductManager()
    
    func getSearchProduct(parameters:[String:String],
                             success:@escaping (SearchProductModel) -> Void,
                             failure:@escaping (Error) -> Void) {
        RequestManager().request(target: .searchProduct(withParameters: parameters), requestHandlerCompletion: { ( response) in
            
            if let items = SearchProductModel(jsonString: response.description){
                success(items)
            }
            
        }) { (error) in
            failure(error)
        }
    }
}


