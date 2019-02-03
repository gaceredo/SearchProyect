//
//  DetailsSearchProductViewontrollerViewController.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/2/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

class DetailsSearchProductViewontrollerViewController: UIViewController,DetailsSearchProductDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel:DetailsSearchProductViewModel = DetailsSearchProductViewModel()
    
    var idPrduct:String?{
        didSet{
            viewModel.callDetailsSearchProduct(idPrduct ?? LocalizableStrings.Placeholders.emptyText.localized)
            viewModel.callDescriptionProduct(idPrduct ?? LocalizableStrings.Placeholders.emptyText.localized)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
    }
    
    func setupTableView()  {
        tableView.registerNib(HeaderDescriptionTableViewCell.self)
        tableView.registerNib(ScrollImageTableViewCell.self)
        tableView.registerNib(HeaderDetailsSearchTableViewCell.self)
        viewModel.delegate = self
        tableView.delegate = viewModel
        tableView.dataSource = viewModel
        tableView.rowHeight = UITableView.automaticDimension
        tableView.keyboardDismissMode = .onDrag
        tableView.tableFooterView = UIView()
    }
    
    func response(isValid: Bool) {
        //validate response 
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
    
}
