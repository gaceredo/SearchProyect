//
//  Localizable.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

protocol Localizable {
    var localized: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized()
    }
}

extension String {
    func localized(_ tableName: String = "Localizable") -> String {
        return Bundle.main.localizedString(forKey: self, value: "", table: tableName)
    }
}
