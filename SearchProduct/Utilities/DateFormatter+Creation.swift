//
//  DateFormatter+Creation.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 1/30/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation


enum DateFormatType: String{
    case simple = "dd/MM/yyyy"
    case simpleWithoutSeparation = "dd MMM YYYY"
    case complete = "dd/MM/yyyy, hh:mm"
    case largeWithZeroHourOffset = "yyyy-MM-dd'T'HH:mm:ss'Z'"
    case defaultValue = "MM-dd-yyyy"
    case defaultValue2 = "yyyy-MM-dd"
}

extension DateFormatter{
    convenience init(format: DateFormatType){
        self.init()
        self.dateFormat = format.rawValue
    }
    
    func formateDate(string: String) -> Date? {
        return self.date(from: string)
    }
}
