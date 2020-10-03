//
//  MemoryGame.swift
//  Memorize-3
//
//  Created by 沙茂龙 on 2020/9/30.
//

import Foundation
struct MemoryGame<CardContent>{
    
    // MARK: - Data
    var cards: Array<Card>
    
    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
        var id: Int
    }
    // MARK: - Logic func
    mutating func choose(card: Card){
        print("chosen card: \(card)")
        let chosenIndex: Int = self.index(of: card)
        cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
    }
    func index(of card: Card) -> Int {
        for index in 0..<cards.count{
            if card.id == cards[index].id{
                return index
            }
        }
        return -1 // TODO: bogus!
    }
    init(numberOfPairsOfCard: Int, cardFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCard {
            let content = cardFactory(pairIndex)
            cards.append(Card(content: content,id: pairIndex*2))
            cards.append(Card(content: content,id: pairIndex*2+1))
        }
    }
}
