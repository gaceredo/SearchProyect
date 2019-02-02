//
//  ProductsViewController.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        service()
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    func service()  {
        SearchProductManager.shared.getNewsFeedCategory(parameters: ["q":"iphone 6"], success: { (response) in
            print(response)
        }) { (error) in
            
        }
    }

}

class SearchProductManager {
    
   static let shared: SearchProductManager = SearchProductManager()
    
    func getNewsFeedCategory(parameters:[String:String],
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
