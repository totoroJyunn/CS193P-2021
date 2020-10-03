//
//  ContentView.swift
//  a-1
//
//  Created by TotoroJ on 2020/10/3.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiGameView
    var body: some View {
        HStack{
            ForEach(viewModel.cards){ card in
                CardView(card:card)
            }
        }
        .padding()
        .foregroundColor(.orange)
        // MARK: assignment 5
        .font(viewModel.cards.count>=5 ?  .caption : .largeTitle)
    }
}
struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
            // MARK: assignment 3
        }.aspectRatio(2.0/3.0, contentMode: .fit)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiGameView())
    }
}
