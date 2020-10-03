//
//  MemoryGame.swift
//  Memorize-2
//
//  Created by TotoroJ on 2020/9/30.
//

import Foundation
struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCard: Int, contentFactory: (Int) -> CardContent ){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCard {
            let content = contentFactory(pairIndex)
            cards.append(Card(content: content,id: pairIndex*2 ))
            cards.append(Card(content: content,id: pairIndex*2+1 ))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp = true
        var isMathed = false
        var content: CardContent
        var id: Int
    }
}
