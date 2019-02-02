//
//  SearchProductTableViewCell.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class SearchProductTableViewCell: UITableViewCell, ReusableCell {

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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleProduct.text = nil
        imageProduct.image = nil
        descriptionsProduct.text = nil
    }

    func setImage(urlImage:String){
        let url = URL(string: urlImage)
        let processor = DownsamplingImageProcessor(size: imageProduct.frame.size)
            >> RoundCornerImageProcessor(cornerRadius: 0)
        imageProduct.kf.indicatorType = .activity
        imageProduct.kf.setImage(
            with: url,
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        {
            result in
            switch result {
            case .success(let value):
                if let url = value.source.url{
                     self.imageProduct.kf.setImage(with: url)
                }
            case .failure( _):
               break
            }
        }
    }
    
}
