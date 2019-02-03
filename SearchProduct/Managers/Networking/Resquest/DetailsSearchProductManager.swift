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

class DescriptionsSearchProductManager {
    
    static let shared: DescriptionsSearchProductManager = DescriptionsSearchProductManager()
    
    func getDetailsSearchProduct(IdProduct:String,
                                 success:@escaping (DescriptionProduct) -> Void,
                                 failure:@escaping (Error) -> Void) {
        RequestManager().request(target: .descriptionSearchProduct(withIdProduct: IdProduct), requestHandlerCompletion: { ( response) in
            
            if let items = DescriptionProduct(jsonString: response.description){
                success(items)
            }
            
        }) { (error) in
            failure(error)
        }
    }
}
