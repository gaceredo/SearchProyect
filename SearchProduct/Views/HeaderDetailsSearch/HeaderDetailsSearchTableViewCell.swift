//
//  HeaderDetailsSearchTableViewCell.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

class HeaderDetailsSearchTableViewCell: UITableViewCell, ReusableCell {

    @IBOutlet weak var titleDetails: UILabel!
    @IBOutlet weak var sendDetails: UILabel!
    @IBOutlet weak var priceDetails: UILabel!
    @IBOutlet weak var discountDetails: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
}
