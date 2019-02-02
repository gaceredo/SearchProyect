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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupSearch()
        viewModel.delegate = self
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
            //inser view not result
        }
    }
    
    func reloadTableView() {
        self.hideHUD()
        self.tableView.reloadData()
    }

}
