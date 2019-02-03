//
//  EmptyResultSearch.swift
//  SearchProduct
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import UIKit

protocol EmptyResultSearchDelegate:class {
    func reloadSearch()
}

class EmptyResultSearch: UIView {

    @IBOutlet weak var btnReload: UIButton!
    @IBOutlet weak var textEmpty: UILabel!
    
    var delegate:EmptyResultSearchDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.seupIU()
    }
    
    func seupIU(){
        btnReload.backgroundColor = .yellowML
        btnReload.setTitleColor(.white, for: .normal)
        btnReload.setTitle("Buscar resultados", for: .normal)
        
    }
    
    @IBAction func isNewReload(_ sender: UIButton) {
        self.delegate?.reloadSearch()
    }
}
