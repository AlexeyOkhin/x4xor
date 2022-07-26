//
//  NetManager.swift
//  H4XOR
//
//  Created by Djinsolobzik on 10.02.2022.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }

        let session = URLSession(configuration: .default)

        session.dataTask(with: url) {data, response, error in
            if error == nil {
                guard let safeData = data else {
                    return
                }
                let decoder = JSONDecoder()
                do {
                    let resutation = try decoder.decode(Result.self, from: safeData)
                    DispatchQueue.main.async {
                        self.posts = resutation.hits
                    }
                    
                } catch {
                    print(error)
                }
                
            }
        }.resume()
    }
    
    
    
}



