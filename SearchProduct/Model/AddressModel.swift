//
//  AddressModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
class AddressModel: Mappable {
    
    let stateId: String?
    let stateName :String?
    let cityId: String?
    let cityName: String?
    
    enum CodingKeys:String, CodingKey {
        
        case stateId = "state_id"
        case stateName = "state_name"
        case cityId = "city_id"
        case cityName = "city_name"
    }
    
}
