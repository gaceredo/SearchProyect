//
//  SearchProductViewModel.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import Foundation

protocol SearchProductDelegate:class {
    func response(isValid:Bool)
    func reloadTableView()
    func pushViewController(_ id:String?)
}

class SearchProductViewModel:NSObject {
    
    var delegate:SearchProductDelegate? = nil
    var results: [ResultModel] = []
    var searchText:String = ""
    
    
    func callSearchProductManager()  {
        SearchProductManager.shared.getSearchProduct(parameters: ["q":searchText], success: { [weak self] (response) in
            
            guard let result = response.results else {
                return
            }
            self?.results = result
            self?.delegate?.reloadTableView()
            
            self?.delegate?.response(isValid: true)
        }) { [weak self] (error) in
            self?.delegate?.response(isValid: false)
        }
    }
    
    func reload() {
        self.results.removeAll()
        self.delegate?.reloadTableView()
        self.callSearchProductManager()
    }
    
}
