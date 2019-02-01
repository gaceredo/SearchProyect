//
//  ReusableCell.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 1/31/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

import UIKit

public protocol ReusableCell {
    static var reuseIdentifier: String { get }
    static var xibName: String { get }
}

public extension ReusableCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    static var xibName: String {
        return String(describing: self).components(separatedBy: ".").last!
    }
}
