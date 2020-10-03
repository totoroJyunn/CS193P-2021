//
//  EmojiMemoryGame.swift
//  Memorize-3
//
//  Created by TotoroJ on 2020/9/30.
//

import SwiftUI

class EmojiMEmoryGame: ObservableObject {
    @Published private var Model: MemoryGame<String> = createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🐥","😇"]
        return MemoryGame(numberOfPairsOfCard: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    // MARK: - Access to the Model,notices changes
    var cards: Array<MemoryGame<String>.Card> {
        Model.cards
    }
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
//        objectWillChange.send()
        Model.choose(card: card)
    }
}
