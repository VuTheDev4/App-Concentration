//
//  ViewController.swift
//  Concentration
//
//  Created by Vu Duong on 8/5/18.
//  Copyright © 2018 Vu Duong. All rights reserved.
//TEST AGAIN

import UIKit

class ViewController: UIViewController {
    
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
   
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🐨","🐯","🦁","🦊"]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        flipCount += 1
       if let cardNumber = cardButtons.index(of: sender) {
          flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
       } else {
        print("Chosen Cards number was not in cardButtons")
        }
    }

    func flipCard(withEmoji emoji: String, on button: UIButton) {
       print("flipCard(withEmoji \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
        
}

