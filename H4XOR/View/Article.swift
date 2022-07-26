//
//  Article.swift
//  H4XOR
//
//  Created by Djinsolobzik on 23.02.2022.
//

import SwiftUI

struct Article: View {
    
    let urlSstring: String?
    
    var body: some View {
        WebView(urlString: urlSstring)
    }
}

struct Article_Previews: PreviewProvider {
    static var previews: some View {
        Article(urlSstring: "www.googl.com")
    }
}


