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
    let sort: SortModel?
    let availableSorts:[SortModel]?

    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case query
        case paging
        case results
        case sort
        case availableSorts = "available_sorts"

    }
}








