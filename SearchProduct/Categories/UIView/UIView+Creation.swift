//
//  UIView+Creation.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 1/31/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation


import UIKit

extension UIView {
    
    static func instantiateFromNib() -> Self? {
        func instanceFromNib<T: UIView>() -> T? {
            return UINib(nibName: "\(self)", bundle: nil).instantiate(withOwner: nil, options: nil).first as? T
        }
        return instanceFromNib()
    }
}
