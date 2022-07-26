//
//  Post.swift
//  H4XOR
//
//  Created by Djinsolobzik on 21.02.2022.
//

import Foundation
struct Result: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
