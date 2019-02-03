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
    var result: ResultModel?
    var textDescription:String?
    var delegate:DetailsSearchProductDelegate?
    var isFirst = 0
    func callDetailsSearchProduct(_ id:String)  {
        DetailsSearchProductManager.shared.getDetailsSearchProduct(IdProduct: id, success: { [weak self]  (success) in
            self?.result = success
            if let images = success.pictures{
                self?.imageUrlArray = images
                self?.delegate?.reloadTableView()
            }
        }) { (error) in
          //Error
        }
    }
    
    
    func callDescriptionProduct(_ id:String){
        DescriptionsSearchProductManager.shared.getDetailsSearchProduct(IdProduct: id, success: {[weak self] (success) in
            self?.textDescription = success.plainText
            self?.delegate?.reloadTableView()
        }) { (error) in
            
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView {
            headerView.contentView.backgroundColor = .white
        }
    }
    
    func cellHeaderDetails(_ tableView:UITableView,_ indexPath:IndexPath ) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HeaderDetailsSearchTableViewCell.xibName, for: indexPath) as! HeaderDetailsSearchTableViewCell
        cell.titleDetails.text = self.result?.title
        
        if let warranty = self.result?.warranty {
            cell.sendDetails.text = warranty
        }else{
            cell.heightAnchor.constraint(equalToConstant: 0)
        }
        if let currencyId = result?.currencyId,
            let price = result?.price, let availableQuantity =  result?.availableQuantity{
            
            cell.priceDetails.text = "\(validateCurrenc(currencyId)) \(Int(price))"
            cell.discountDetails.text = "\(available): \(availableQuantity) "
        }
        return cell
    }
    
    func cellScrollImage(_ tableView:UITableView,_ indexPath:IndexPath ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ScrollImageTableViewCell.xibName, for: indexPath) as! ScrollImageTableViewCell
       
        cell.setup(imageUrlArray)
     
        return cell
    }
    func cellDescription(_ tableView:UITableView,_ indexPath:IndexPath ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HeaderDescriptionTableViewCell.xibName, for: indexPath) as! HeaderDescriptionTableViewCell
        cell.descriptionProduct.text = textDescription
        return cell
    }
}

