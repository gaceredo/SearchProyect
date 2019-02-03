//
//  RoutersURLs.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

struct RouterURL {
    
    static func searchProduct() -> String {
        return "sites/MLU/search"
    }
    
    static func detailsSearchProduct(_ idProduct:String) -> String {
        return "items/\(idProduct)"
    }
    
    static func descriptionSearchProduct(_ idProduct:String) -> String {
        return "items/\(idProduct)/description"
    }
    
}
