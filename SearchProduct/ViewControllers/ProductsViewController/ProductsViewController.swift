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
        PYNewsFeedCategoryManager.shared.getNewsFeedCategory(success: { (response) in
            
        }) { (error) in
            
        }
    }

}

class PYNewsFeedCategoryManager {
    
   static let shared: PYNewsFeedCategoryManager = PYNewsFeedCategoryManager()
    
    func getNewsFeedCategory(success:@escaping ([String:Any]?) -> Void,
                             failure:@escaping (Error) -> Void) {
        RequestManager().request(target: .searchProduct(withParameters: ["q":"testing"]), requestHandlerCompletion: { (services , Response) in
            print(services)
            print(Response)
            success(services.dictionaryObject)
            
        }) { (erro) in
            print(erro)
        }
   }
    
}
