//
//  SearchProductViewModel+Delegate.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

extension SearchProductViewModel: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return searchCell(tableView: tableView, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.results.count
    }
    
    func searchCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchProductTableViewCell.xibName, for: indexPath) as! SearchProductTableViewCell
         let index = results[indexPath.row]
        
        cell.titleProduct.text = index.title
        cell.descriptionsProduct.text = index.title
       
        return cell
    }
}
