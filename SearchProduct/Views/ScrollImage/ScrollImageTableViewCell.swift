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
            DispatchQueue.main.async{
                setImage(urlImage: image[i].url, image: &imageView) { (image) in
                    imageView.kf.setImage(with: image)
                }
            }
            if UIDevice.current.orientation.isLandscape {
                self.constrainsImage(imageView: imageView, index: i, scalle: 4)
            } else {
               self.constrainsImage(imageView: imageView, index: i, scalle: 2)
            }
            
        }
    }
    
    func constrainsImage(imageView:UIImageView, index:Int, scalle:CGFloat) {
        
        let xPosition = self.frame.width / scalle * CGFloat(index)
        imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width / scalle, height: self.scrollView.frame.height)
        
        scrollView.contentSize.width = scrollView.frame.width * CGFloat(index + 1) / scalle
        scrollView.addSubview(imageView)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        let subViews = self.scrollView.subviews
        for subview in subViews{
            subview.removeFromSuperview()
        }
    }

    
}
