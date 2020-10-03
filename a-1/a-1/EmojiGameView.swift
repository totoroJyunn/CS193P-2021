//
//  EmojiGameView.swift
//  a-1
//
//  Created by TotoroJ on 2020/10/3.
//

import SwiftUI

class EmojiGameView {
    var model: MemoryGame<String> = createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String> {
        // MARK: extra 1
        let emojis = ["🐧","🦋","🦀","🍑","🍙","🐣","🎾","🎯","🎲","🎻","🎺","🪕","🚗"].shuffled()
        // MARK: assignment 4
        
        return MemoryGame(numberOfPairsOfCard: Int.random(in:2..<5))
        { index in
            emojis[index]
        }
//        MARK: test for assignment 5
//        return MemoryGame(numberOfPairsOfCard: 5)
//        { index in
//            emojis[index]
//        }
    }
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
