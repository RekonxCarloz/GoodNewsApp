//
//  NewsListTableViewController.swift
//  GoodNewsApp
//
//  Created by Carlos Cobian on 02/02/22.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }

    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
