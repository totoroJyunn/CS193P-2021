//
//  ViewModel.swift
//  l2
//
//  Created by TotoroJ on 2021/5/11.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["🆔","♠️","🅱️"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count){ pairIndex in
            emojis[pairIndex]
        }
    }
    // MARK: - access to the model 访问模型
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    // MARK: - Intent(s) 意图
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
