//
//  ContentView.swift
//  swiftUIPractice
//
//  Created by Mariola Hullings on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List{
            BookView(title: "A Tale of 2 Cites", author: "Charles Dicken")
            BookView(title: "Sum", author: "David Eagleman")
            BookView(title: "A Tale of 2 Cites", author: "Charles Dicken")
            BookView(title: "Sum", author: "David Eagleman")
            BookView(title: "A Tale of 2 Cites", author: "Charles Dicken")
            BookView(title: "Sum", author: "David Eagleman")
        }
    }
}

#Preview {
    ContentView()
}

struct BookView: View {
    var title: String
    var author: String
    var body: some View {
        HStack {
            Image(systemName: "book")
                .resizable()
                .frame(width: 50, height: 40)
                .foregroundColor(.pink)
                .padding(10)
            VStack(alignment: .leading, content: {
                Text(title)
                    .font(.title)
                Text(author)
                    .foregroundStyle(.gray)
            } )
            .padding(10)
        }
    }
}
