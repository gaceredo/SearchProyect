//
//  ProductsViewController+NavigatorBar.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

extension ProductsViewController{
    func setupNavigationBar() {
        
        title = "buscar prducto"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search,
                                                            target: self,
                                                            action: #selector(searchButtonAction))
    }
}
