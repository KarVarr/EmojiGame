//
//  ViewController.swift
//  EmojiGame
//
//  Created by Karen Vardanian on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = ConcentrationGame(numberOfPairsOfCards: (buttonCollection.count + 1) / 2)
      
    
    var labelCounter = 0
    let emojiArray = ["🏀", "⚾️", "🏀", "⚾️"]
    
    @IBOutlet weak var textFields: UILabel!
    @IBOutlet var buttonCollection: [UIButton]!
    
    
    func updateViewFromModel() {
        for index in buttonCollection.indices {
            let button = buttonCollection[index]
            let card = game.cards[index]
            if card.isFaceUp {
                
            }
        }
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        labelCounter += 1
        textFields.text = "Flips: \(labelCounter)"
        
        if sender.currentTitle == "Touch" {
            sender.setTitle(emojiArray[buttonCollection.firstIndex(of: sender) ?? 0], for: .normal)
            sender.backgroundColor = UIColor.white
            
            updateViewFromModel()
            
        } else {
            sender.setTitle("Touch", for: .normal)
            sender.backgroundColor = UIColor.orange
        }
        
    }
    
    
}

