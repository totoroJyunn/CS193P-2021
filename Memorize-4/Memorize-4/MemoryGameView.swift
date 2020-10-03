//
//  MemoryGameView.swift
//  Memorize-4
//
//  Created by TotoroJ on 2020/10/2.
//

import SwiftUI

class MemoryGameView: ObservableObject{
    @Published private var model: MemoryGame<String> = createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","👺","👾"]
        return MemoryGame(numberOfPairsOfCards: emojis.count) { index in
            emojis[index]
        }
    }
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
