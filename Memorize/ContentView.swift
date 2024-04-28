//
//  ContentView.swift
//  Memorize
//
//  Created by Jesus Manuel Vergara on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(NewText: "🥰", isFaceUp: true)
            CardView(NewText: "🤓")
            CardView(NewText: "🤯", isFaceUp: true)
            CardView(NewText: "☠️")
        }
        .foregroundColor(Color.red)
        .padding()
    }
}


struct CardView: View {
    var NewText: String = "😂"
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text(NewText).font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
    }
}











#Preview {
    ContentView()
}
