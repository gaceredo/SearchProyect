//
//  ProductViewController+ Transitions.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

extension ProductsViewController{
    
    @objc func searchButtonAction() {
        let searchViewController: SearchProductViewController = SearchProductViewController.loadFromNib()
        navigationController?.pushViewController(searchViewController, animated: true)
    }
}
