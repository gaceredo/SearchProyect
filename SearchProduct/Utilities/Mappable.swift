//
//  Mappable.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 1/30/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

protocol Mappable: Decodable {
    init?(jsonString: String)
    static func dateFormat() -> DateFormatter
}

extension Mappable {
    init?(jsonString: String)  {
        
        guard let data = jsonString.data(using: .utf8) else {
            return nil
        }
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(Self.dateFormat())
        
        if let decodable  = try? decoder.decode(Self.self, from: data){
            self = decodable
        } else {
            return nil
        }
    }
    
    static func dateFormat() -> DateFormatter {
        return DateFormatter.init(format: .defaultValue)
    }
    
}
