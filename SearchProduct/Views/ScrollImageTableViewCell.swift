//
//  ScrollImageTableViewCell.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit
import Kingfisher

class ScrollImageTableViewCell: UITableViewCell, ReusableCell {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        scrollView.frame = self.frame

    }

    func setup(_ image:[PicturesModel])  {
        
        for i in 0 ..< image.count{
            var imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit
            
            DispatchQueue.main.async {
                setImage(urlImage: image[i].url, image: &imageView) { (image) in
                    imageView.kf.setImage(with: image)
                }
            }
            
            
            let xPosition = self.frame.width / 2 * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width / 2, height: self.scrollView.frame.height)
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i + 1) / 2
            scrollView.addSubview(imageView)
        }
    }
    

    
}
