//
//  PagingModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class PagingModel: Mappable {
    let total:Int?
    let offset: Int?
    let limit : Int?
    let primaryResults:Int?
    
    enum CodingKeys:String, CodingKey {
        case total
        case offset
        case limit
        case primaryResults = "primary_results"
    }
}
