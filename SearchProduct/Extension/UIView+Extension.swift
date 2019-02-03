//
//  UIView+Extension.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import Masonry

extension UIView{
    class func loadFirstViewFromNib<T: UIView>(bundle: Bundle? = nil) -> T {
        // swiftlint:disable:next force_cast
        return UINib(nibName: T.className, bundle: bundle).instantiate(withOwner: self, options: nil).first as! T
    }
    
    func insetsZeroToSuperview() {
        if let subview = self.superview {
            self.mas_makeConstraints { (make) in
                make?.edges.equalTo()(subview)?.insets()(UIEdgeInsets.zero)
            }
        }
    }
}
