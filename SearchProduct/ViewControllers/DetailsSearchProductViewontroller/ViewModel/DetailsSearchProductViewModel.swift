//
//  DetailsSearchProductViewModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

protocol DetailsSearchProductDelegate:class {
    func response(isValid:Bool)
    func reloadTableView()
}

class DetailsSearchProductViewModel: NSObject {
 
    var imageUrlArray:[PicturesModel] = []
    var delegate:DetailsSearchProductDelegate?
    
    func callDetailsSearchProduct(_ id:String)  {
        DetailsSearchProductManager.shared.getDetailsSearchProduct(IdProduct: id, success: { [weak self]  (success) in
            if let images = success.pictures{
                self?.imageUrlArray = images
                self?.delegate?.reloadTableView()
            }
        }) { (error) in
            
        }
    }
}

extension DetailsSearchProductViewModel: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ScrollImageTableViewCell.xibName, for: indexPath) as! ScrollImageTableViewCell
        
        cell.setup(imageUrlArray)
        return cell
        
    }
    
    
    
}
