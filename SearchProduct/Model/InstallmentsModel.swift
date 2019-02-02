//
//  InstallmentsModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

class InstallmentsModel: Mappable {
    let quantity: Double?
    let amount:  Double?
    let rate: Int?
    let currencyId: String?
    
    enum CodingKeys:String, CodingKey {
        case quantity
        case amount
        case rate
        case currencyId = "currency_id"
    }
}
