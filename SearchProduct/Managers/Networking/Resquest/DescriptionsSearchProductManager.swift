//
//  DescriptionsSearchProductManager.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

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
