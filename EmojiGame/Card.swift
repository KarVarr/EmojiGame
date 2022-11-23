//
//  Card.swift
//  EmojiGame
//
//  Created by Karen Vardanian on 14.11.2022.
//

import Foundation


struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    
    static var identifierNumber = 0
    static func identifierGenrator() -> Int {
        identifierNumber += 1
        return identifierNumber
    }
    
    init() {
        self.identifier = Card.identifierGenrator() 
    }
}
