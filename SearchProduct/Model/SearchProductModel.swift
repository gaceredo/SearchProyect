//
//  SearchProductModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import SwiftyJSON

class SearchProductModel: Mappable {
   
    let siteID: String?
    let query: String?
    let paging: PagingModel?
    let results: [ResultModel]?
   // let secondaryResults: [String:Any]?
   // let relatedResults: [String:Any]?
    let sort: SortModel?
    let availableSorts:[SortModel]?
   // let filters: [String:Any]?
   // let availableFilters: [String:Any]?
    
    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case query
        case paging
        case results
        case sort
        case availableSorts = "available_sorts"

    }
}

class PagingModel: Mappable {
    var total:Int?
    var offset: Int?
    var limit : Int?
    var primaryResults:Int?
    
    enum CodingKeys:String, CodingKey {
        case total
        case offset
        case limit
        case primaryResults = "primary_results"
    }
}


class SortModel: Mappable {
    let id, name: String?
}


class ResultModel: Mappable {
    
    var id:String?
    var site_id:String?
    var title:String?
    var seller:SellerModel?
}

class SellerModel: Mappable {
    
    var id:Int?
    var powerSellerStatus: String?
    var carDealer: Bool?
    var realEstateAgency: Bool?
    
    enum CodingKeys:String, CodingKey {
        case id
        case powerSellerStatus = "power_seller_status"
        case carDealer = "car_dealer"
        case realEstateAgency = "real_estate_agency"
    }
}
