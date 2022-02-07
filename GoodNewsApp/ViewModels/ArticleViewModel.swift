//
//  ArticleViewModel.swift
//  GoodNewsApp
//
//  Created by Carlos Cobian on 03/02/22.
//

import Foundation

struct ArticleListViewModel{
    let articleList: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int)->Int{
        return self.articleList.count
    }
    
    func articleAtIndex(_ index: Int)->ArticleViewModel{
        let article = self.articleList[index]
        return ArticleViewModel(article)
    }
}

//Inicializamos SOLO UN articulo
struct ArticleViewModel{
    private let article: Article
}

extension ArticleViewModel{
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel{
    var title: String {
        return self.article.title
    }
    
    var description: String{
        return self.article.description
    }
}
