//
//  ContentView.swift
//  Memorize-4
//
//  Created by TotoroJ on 2020/10/2.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: MemoryGameView
    
    var body: some View {
        Grid(viewModel.cards) { card in
            CardView(card: card).onTapGesture {
                viewModel.choose(card: card)
            }
            .padding(5)
        }
    }
}
struct CardView: View{
    var card: MemoryGame<String>.Card
    var body: some View{
        GeometryReader { geometry in
            ZStack{
                if card.isFaceUp {
                        RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                        RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: lineWidth)
                        Text(card.content)
                }else{
                    if !card.isMatched {
                        RoundedRectangle(cornerRadius: cornerRadius).fill()
                    }
                }
        }
        .foregroundColor(.orange)
        .font(.system(size: fontSize(for: geometry.size)))
        }
    }
    // MARK: - Drawing Constant
    var cornerRadius: CGFloat = 10.0
    var lineWidth: CGFloat = 3.0
    func fontSize(for size: CGSize) -> CGFloat{
        min(size.height,size.width) * 0.75
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: MemoryGameView())
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
