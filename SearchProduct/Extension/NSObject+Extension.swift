//
//  NSObject+Extension.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
