//
//  Memorize_2App.swift
//  Memorize-2
//
//  Created by TotoroJ on 2020/9/30.
//

import SwiftUI

@main
struct Memorize_2App: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
