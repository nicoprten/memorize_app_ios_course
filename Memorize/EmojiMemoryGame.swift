//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by admin on 16/03/2023.
//

import SwiftUI

//func makeCardContent(index: Int) -> String{
//    return "😎"
//}


class EmojiMemoryGame{
    
    static let emojis = ["😠", "😤", "🤬", "🤯", "😶‍🌫️", "🥸", "😎", "🫡", "😌", "🥶", "🫠", "🥳", "🫥", "🫣"]

    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
}
