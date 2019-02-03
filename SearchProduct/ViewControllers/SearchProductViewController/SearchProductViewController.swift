//
//  SearchProductViewController.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/1/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

class SearchProductViewController: UIViewController,SearchProductDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var viewModel: SearchProductViewModel = SearchProductViewModel()
    var emptyResultSearch: EmptyResultSearch? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupSearch()
        viewModel.delegate = self
        title = "Buscar Prducto"
    }

    func setupTableView()  {
        tableView.registerNib(SearchProductTableViewCell.self)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.delegate = viewModel
        tableView.dataSource = viewModel
        tableView.keyboardDismissMode = .onDrag
        tableView.tableFooterView = UIView()
    }

    func response(isValid: Bool) {
        if !isValid {
            self.insertViewEmptySearch()
            self.searchBar.resignFirstResponder()
        }
    }
    
    func insertViewEmptySearch() {
        if (self.emptyResultSearch == nil) {
            self.emptyResultSearch = EmptyResultSearch.loadFirstViewFromNib()
            if let emptyResultSearch = self.emptyResultSearch {
                self.view.addSubview(emptyResultSearch)
                emptyResultSearch.insetsZeroToSuperview()
            }
        }
    }
    
    func reloadTableView() {
        self.hideHUD()
        self.tableView.reloadData()
    }
    
    func pushViewController(_ id: String?) {
        
        let searchDetailsViewController: DetailsSearchProductViewontrollerViewController = DetailsSearchProductViewontrollerViewController.loadFromNib()
        searchDetailsViewController.idPrduct = id
        navigationController?.pushViewController(searchDetailsViewController, animated: true)
    }

}
