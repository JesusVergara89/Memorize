//
//  EmojiMemorygameVew.swift
//  Memorize
//
//  Created by Jesus Manuel Vergara on 28/04/24.
//

import SwiftUI

struct EmojiMemorygameVeiw: View {
    @ObservedObject var viewModel: EmojiMemoryGame 
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Button("Shuffle"){
                viewModel.shuffle()
            }
        }
        
        .padding()
        
    }
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 70), spacing: 0)],spacing: 0) {
            ForEach(viewModel.cards.indices, id: \.self){ index in
                CardView(viewModel.cards[index])
            }.aspectRatio(2/3,contentMode: .fit)
                .padding(4)
        }
        .foregroundColor(Color.red)
    }
    
}


struct CardView: View {
    let card: MemoryGame<String>.Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    var body: some View {
        ZStack {
            let Base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            Group {
                Base.fill(.white)
                Base
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text(card.content).font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
            }.opacity(card.isFaceUp ? 1 : 0)
            Base.fill().opacity(card.isFaceUp ? 0 : 1)
        }
    }
}



#Preview {
    EmojiMemorygameVeiw(viewModel: EmojiMemoryGame())
}
