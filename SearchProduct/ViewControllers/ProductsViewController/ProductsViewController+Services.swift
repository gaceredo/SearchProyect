//
//  ProductsViewController+Services.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

extension ProductsViewController{
    
    func service()  {
        SearchProductManager.shared.getNewsFeedCategory(parameters: ["q":"iphone 6"], success: { (response) in
            print(response)
        }) { (error) in
            
        }
    }
}
