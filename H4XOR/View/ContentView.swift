//
//  ContentView.swift
//  H4XOR
//
//  Created by Djinsolobzik on 09.02.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                
                NavigationLink(destination: Article(urlSstring: post.url)) {
                    HStack{
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
        }
        .navigationBarTitle("H4XOR News")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
