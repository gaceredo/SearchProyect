//
//  UIViewController+HUD.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

import UIKit
import SVProgressHUD

extension UIViewController {
    func showHUD() {
        SVProgressHUD.show()
    }
    
    func hideHUD() {
        SVProgressHUD.dismiss()
    }
}
