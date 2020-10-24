//
//  data.swift
//  iExpense
//
//  Created by Vincent He on 2020-10-24.
//

import Foundation

struct Post: Codable, Identifiable {
    let id = UUID() // This is for Identifiable
    var title: String
    var body:String
}

class Api{
    func getPosts(completion: @escaping ([Post]) -> ()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { // Stop the code from running crash
            return
        }

        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!) // Data model, data input
            
            DispatchQueue.main.async {
                completion(posts) // return a from post
            }
        }
        .resume()
    }
}
