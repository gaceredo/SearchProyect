//
//  SellerModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class SellerModel: Mappable {
    
    let id:Int?
    let powerSellerStatus: String?
    let carDealer: Bool?
    let realEstateAgency: Bool?
    
    enum CodingKeys:String, CodingKey {
        case id
        case powerSellerStatus = "power_seller_status"
        case carDealer = "car_dealer"
        case realEstateAgency = "real_estate_agency"
    }
}
