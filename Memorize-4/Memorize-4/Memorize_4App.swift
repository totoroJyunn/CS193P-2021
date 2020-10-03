//
//  Memorize_4App.swift
//  Memorize-4
//
//  Created by 沙茂龙 on 2020/10/2.
//

import SwiftUI

@main
struct Memorize_4App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: MemoryGameView())
        }
    }
}
