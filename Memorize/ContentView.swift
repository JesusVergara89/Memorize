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
    //var NewText = "😂" wir brauchen nicht to specify the type of varible cause es gibt something call type inference
    @State var isFaceUp: Bool = false
    // var isFaceUp = false so wir brachen nicht to specify the type of varibel
    var body: some View {
        ZStack {
            let Base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            //let Base = RoundedRectangle(cornerRadius: 12) type inference, so we can put the type aber the type is implicit
            //let Base = Circle() so we can change the struct or shape of the view ohne bracht to change allein vier places
            if isFaceUp {
                Base.fill(.white)
                Base
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text(NewText).font(.largeTitle)
            }else{
                Base.fill()
            }
            
        }
        .onTapGesture {
            //print("tapped")// dises print in the console "tapped"
            //isFaceUp = !isFaceUp // isFaceUp ist eine strcuture, so wir konnen call function avaiables since the creation of the varible itselft.
            isFaceUp.toggle() // toggle() change the bool varibale between true and false
        }
    }
}











#Preview {
    ContentView()
}
