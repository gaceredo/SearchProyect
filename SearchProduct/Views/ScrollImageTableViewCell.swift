//
//  ScrollImageTableViewCell.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

class ScrollImageTableViewCell: UITableViewCell {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        scrollView.frame = self.frame
        setup()
    }

    func setup()  {
        for i in 0 ..< images.count{
            let imageView = UIImageView()
            imageView.image = images[i]
            let xPosition = self.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i + 1)
            scrollView.addSubview(imageView)
        }
    }
    
    
    
    
    
    
    
}
