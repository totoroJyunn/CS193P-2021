//
//  l2App.swift
//  Shared
//
//  Created by TotoroJ on 2021/5/11.
//

import SwiftUI

@main
struct l2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
