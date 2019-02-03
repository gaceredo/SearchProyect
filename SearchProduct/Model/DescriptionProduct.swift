//
//  DescriptionProduct.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

class DescriptionProduct: Mappable {
    
    var text: String?
    var plainText: String?
    var lastUpdated:String?
    var dateCreated: String?
    
    enum CodingKeys:String, CodingKey {
        case text
        case plainText = "plain_text"
        case lastUpdated = "last_updated"
        case dateCreated = "date_created"
        
    }
}
