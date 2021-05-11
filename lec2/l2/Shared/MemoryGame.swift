//
//  MemoryGame.swift
//  l2
//
//  Created by TotoroJ on 2021/5/11.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    func choose(card: Card){
        print("choose:\(card) ")
        
    }
    init(numberOfPairsOfCards: Int,contentGenerator: (Int) -> CardContent){
        cards = Array<Card>()
        for index in 0..<numberOfPairsOfCards{
            let content = contentGenerator(index)
            cards.append(Card(id: index*2, content: content))
            cards.append(Card(id: index*2 + 1, content: content))
        }

    }
    //要加Identifiable，这样ForEach才能遍历
    struct Card: Identifiable{
        var id:Int
        var isFaceUp = true
        var isMatched = false
        var content:CardContent
    }
}
