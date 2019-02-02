//
//  UIViewController+Extension.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 1/30/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    class func loadFromNib<T: UIViewController>() -> T {
        return T(nibName: String(describing: self), bundle: nil)
    }
}
