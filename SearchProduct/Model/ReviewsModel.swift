//
//  ReviewsModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class ReviewsModel: Mappable {
    
    let ratingAverage:Double?
    let total:Int?
    
    enum CodingKeys:String, CodingKey {
        case ratingAverage = "rating_average"
        case total
    }
}
