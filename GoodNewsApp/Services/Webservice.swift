//
//  Webservice.swift
//  GoodNewsApp
//
//  Created by Carlos Cobian on 02/02/22.
//

import Foundation

class Webservie{
    
    func getArticles(url: URL, completion: @escaping([Article]?) -> ()){
        URLSession.shared.dataTask(with: url){ data, response, error in
            if let err = error {
                print(err.localizedDescription)
                completion(nil)
            }else if let data = data{
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList{
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
            }
        }.resume()
    }
}
