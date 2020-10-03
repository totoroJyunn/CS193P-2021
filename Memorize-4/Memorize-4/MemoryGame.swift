//
//  MemoryGame.swift
//  Memorize-4
//
//  Created by 沙茂龙 on 2020/10/2.
//

import Foundation

struct MemoryGame<Content> where Content: Equatable {
    
    var theOneAndOnlyFacedUp: Int? {
        get{ cards.indices.filter { cards[$0].isFaceUp }.only }
        set{
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    mutating func choose(card: Card){
        print("chosen card: \(card)")
        if let chosenIndex = cards.firstIndex(matching: card), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = theOneAndOnlyFacedUp{
                if cards[potentialMatchIndex].content == cards[chosenIndex].content {
                    cards[potentialMatchIndex].isMatched = true
                    cards[chosenIndex].isMatched = true
                }
                cards[chosenIndex].isFaceUp = true
            } else {
                theOneAndOnlyFacedUp = chosenIndex
            }
        }
    }
    init(numberOfPairsOfCards: Int, contentFactory: (Int) -> (Content)){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = contentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
        
    var cards: Array<Card>
    
    struct Card: Identifiable{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: Content
        var id: Int
    }
}
