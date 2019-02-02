//
//  UINavigationBar+Extension.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 1/31/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    @objc class func genericNavigationBar() {
        UINavigationBar.genericBarColor()
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    @objc class func genericBarColor() {
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = UIColor.lightGray
    }
    
}
