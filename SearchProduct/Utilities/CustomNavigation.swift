//
//  CustomNavigation.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

class CustomNavigation : UINavigationController {
    override var preferredStatusBarStyle : UIStatusBarStyle {
        
        if let topVC = viewControllers.last {
            return topVC.preferredStatusBarStyle
        }
        
        return .default
    }
}
