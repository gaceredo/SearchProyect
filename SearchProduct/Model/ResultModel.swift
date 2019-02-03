//
//  ResultModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation


class ResultModel: Mappable {
    
    let id:String?
    let siteId:String?
    let title:String?
    let seller:SellerModel?
    let price:Double?
    let currencyId: String?
    let availableQuantity:Int?
    let soldQuantity: Int?
    let buyingMode: String?
    let listingTypeId: String?
    let stopTime: String?
    let condition: String?
    let permalink: String?
    let thumbnail: String?
    let acceptsMercadopago:Bool?
    let installments:InstallmentsModel?
    let address:AddressModel?
    let tags: [String]?
    let categoryId: String?
    let originalPrice:Int?
    let reviews:ReviewsModel?
    let pictures:[PicturesModel]?
    let warranty:String?
    enum CodingKeys:String, CodingKey {
        case id
        case siteId = "site_id"
        case title
        case seller
        case price
        case currencyId = "currency_id"
        case availableQuantity = "available_quantity"
        case soldQuantity = "sold_quantity"
        case buyingMode = "buying_mode"
        case listingTypeId = "listing_type_id"
        case stopTime = "stop_time"
        case thumbnail
        case condition
        case permalink
        case acceptsMercadopago = "accepts_mercadopago"
        case installments
        case address
        case tags
        case categoryId = "category_id"
        case originalPrice = "original_price"
        case reviews
        case pictures
        case warranty
    }
}

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
