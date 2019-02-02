//
//  SearchProductViewController+SearchBar.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation
import UIKit

extension SearchProductViewController {
    
    func setupSearch() {
        searchBar.delegate = self
        searchBar.becomeFirstResponder()
        searchBar.barStyle = .default
    }
}

extension SearchProductViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.showHUD()
        viewModel.searchText = searchText
        viewModel.reload()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}
