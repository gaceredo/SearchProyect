//
//  DetailsSearchProductManager.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation


class DetailsSearchProductManager {
    
    static let shared: DetailsSearchProductManager = DetailsSearchProductManager()
    
    func getDetailsSearchProduct(IdProduct:String,
                             success:@escaping (ResultModel) -> Void,
                             failure:@escaping (Error) -> Void) {
        RequestManager().request(target: .detailsSearchProduct(withIdProduct: IdProduct), requestHandlerCompletion: { ( response) in
            
            if let items = ResultModel(jsonString: response.description){
                success(items)
            }
            
        }) { (error) in
            failure(error)
        }
    }
}

