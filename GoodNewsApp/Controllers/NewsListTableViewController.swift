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
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=a0e6664f1f414ee9ae7e982b6e087312")!
        
        Webservie().getArticles(url: url){ _ in
            
        }
    }
}
