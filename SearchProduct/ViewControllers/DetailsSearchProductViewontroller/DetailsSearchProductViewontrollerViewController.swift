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
          viewModel.callDetailsSearchProduct(idPrduct!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setupTableView()
        
    }
    
    func setupTableView()  {
        tableView.registerNib(ScrollImageTableViewCell.self)
        viewModel.delegate = self
        tableView.delegate = viewModel
        tableView.dataSource = viewModel
        tableView.rowHeight = UITableView.automaticDimension
        tableView.keyboardDismissMode = .onDrag
        tableView.tableFooterView = UIView()
    }
    
    func response(isValid: Bool) {
        
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
    
    

}
