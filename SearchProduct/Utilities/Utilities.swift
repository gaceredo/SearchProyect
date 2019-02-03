//
//  Utilities.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import Kingfisher
import UIKit

func JSONResponseDataFormatter(_ data: Data) -> Data {
    do {
        let dataAsJSON = try JSONSerialization.jsonObject(with: data)
        let prettyData =  try JSONSerialization.data(withJSONObject: dataAsJSON, options: .prettyPrinted)
        return prettyData
    } catch {
        return data // fallback to original data if it can't be serialized.
    }
}


func validateCurrenc(_ currencyId:String) -> String {
    if currencyId == isDolar {
        return "U$S"
    }
    return "$"
}


func setImage(urlImage:String?, image: inout UIImageView, completion : @escaping (_ images : URL?) -> ()) {
   
    guard let urlImage = urlImage else {
        return
    }
    let url = URL(string: urlImage)
    let processor = DownsamplingImageProcessor(size: image.frame.size)
        >> RoundCornerImageProcessor(cornerRadius: 0)
    image.kf.indicatorType = .activity
    image.contentMode = .scaleAspectFit
    image.kf.setImage(
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
            completion(value.source.url)
            
        case .failure( _):
            break
        }
    }
}
