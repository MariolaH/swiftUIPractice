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
            BookView(title: "A Tale of 2 Cites", author: "Charles Dicken", bookColor: .pink)
            BookView(title: "Sum", author: "David Eagleman", bookColor: .green)
            BookView(title: "A Tale of 2 Cites", author: "Charles Dicken", bookColor: .yellow)
            BookView(title: "Sum", author: "David Eagleman", bookColor: .blue)
            BookView(title: "A Tale of 2 Cites", author: "Charles Dicken", bookColor: .red)
            BookView(title: "Sum", author: "David Eagleman", bookColor: .purple)
        }
    }
}

#Preview {
    ContentView()
}

struct BookView: View {
    var title: String
    var author: String
    var bookColor: Color
    var body: some View {
        HStack {
            Image(systemName: "book")
                .resizable()
                .frame(width: 50, height: 40)
                .foregroundColor(bookColor)
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
