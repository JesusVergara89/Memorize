//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jesus Manuel Vergara on 28/04/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemorygameVeiw(viewModel: game)
        }
    }
}
