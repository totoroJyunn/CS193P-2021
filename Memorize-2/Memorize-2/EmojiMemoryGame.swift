//
//  EmojiMemoryGame.swift
//  Memorize-2
//
//  Created by TotoroJ on 2020/9/30.
//
import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.creatMemoryGame()
    // MARK: - Static func
    static func creatMemoryGame() -> MemoryGame<String>{
        let emojis = ["👻","🗣","🐥"]
        return MemoryGame<String>(numberOfPairsOfCard: emojis.count) { pairIndex in emojis[pairIndex]}
    }
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    // MARK: - Intents(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
