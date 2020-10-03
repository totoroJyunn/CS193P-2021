//
//  MemoryGame.swift
//  a-1
//
//  Created by TotoroJ on 2020/10/3.
//

import Foundation
struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    init(numberOfPairsOfCard: Int,contentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for index in 0..<numberOfPairsOfCard {
            let content = contentFactory(index)
            cards.append(Card(content: content, id: index * 2))
            cards.append(Card(content: content, id: index * 2 + 1))
        }
// MARK: assignment 2
        cards.shuffle()
    }
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id:Int
    }
}
