//
//  PicturesModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class PicturesModel: Mappable {
    let id: String?
    let url: String?
    let secureUrl: String?
    let size:String?
    let maxSize: String?
    let quality: String?
    
    enum CodingKeys:String, CodingKey {
        case id
        case url
        case secureUrl = "secure_url"
        case size
        case maxSize = "max_size"
        case quality
    }
}
