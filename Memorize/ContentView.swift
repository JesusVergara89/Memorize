//
//  ContentView.swift
//  Memorize
//
//  Created by Jesus Manuel Vergara on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["🥰","🤓","🤯","☠️","😊", "🚀", "🌟", "🎉", "🔥", "🌈", "🐱‍👤", "🍕", "🎈", "💡"]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            HStack {
                //let emojis: [String] = ["🥰","🤓","🤯","☠️"] this is the same, array of string
                //CardView(NewText: emojis[0], isFaceUp: true)
                //CardView(NewText: emojis[1])
                // CardView(NewText: emojis[2], isFaceUp: true)
                //CardView(NewText: emojis[3])
                
                //ForEach(0..<4,id: \.self){ index in
                //CardView(NewText: emojis[index], isFaceUp: true)
                //}pther way to do forech view
                //ForEach(emojis.indices,id: \.self){ index in
                // CardView(NewText: emojis[index], isFaceUp: true)
                //}
                ForEach(0..<cardCount,id: \.self){ index in
                    CardView(NewText: emojis[index], isFaceUp: true)
                }
            }
        }
        .foregroundColor(Color.red)
        .padding()
        HStack {
            Button(action: {
                if cardCount > 1 {
                    cardCount -= 1
                }
            }, label: {
                Image(systemName: "rectangle.stack.badge.minus.fill")
            })
            //.imageScale(.large)individualy
            //.font(.largeTitle)
           // Button("Remove card") {
                //cardCount -= 1 this is the oldfashing wy to do btns
            //}
            Spacer()
           // Button("Add card") {
               // cardCount += 1
           // }
            Button(action: {
                if cardCount < emojis.count {
                    cardCount += 1
                }
                
            }, label: {
                Image(systemName: "rectangle.stack.badge.plus.fill")
            })
            //.imageScale(.large)
            //.font(.largeTitle)
        }
        .imageScale(.large)//for all
        .font(.largeTitle)
        
        .padding()
    }
}


struct CardView: View {
    //var NewText: String = "😂" if es gibt a default variable wir use a var if es gibt nicht a default variable wir bauchen eine const variable ohne let
    let NewText: String
    
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
