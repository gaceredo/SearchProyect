//
//  SearchProductTableViewCell.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

class SearchProductTableViewCell: UITableViewCell {

    @IBOutlet weak var titleProduct: UILabel!
    @IBOutlet weak var descriptionsProduct: UILabel!
    @IBOutlet weak var imageProduct: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}