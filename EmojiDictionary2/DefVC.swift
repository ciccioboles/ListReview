//
//  DefVC.swift
//  EmojiDictionary2
//
//  Created by David Boles on 2/6/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class DefVC: UIViewController {

    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDef: UILabel!
    
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()


    emojiLabel.text = emoji
        
        if emojiLabel.text == "💡" {
        emojiDef.text = "Its a flashlight"
        } else if emojiLabel.text == "🐮" {
            emojiDef.text = "Its a cow"
        } else if emojiLabel.text == "🐺" {
            emojiDef.text = "Its a wolf"
        } else if emojiLabel.text == "🏄" {
            emojiDef.text = "Its a surfer"
        } else if emojiLabel.text == "🦄" {
            emojiDef.text = "Its a unicorn"
        } else if emojiLabel.text == "🆘" {
            emojiDef.text = "Its a SOS sign"
        } else if emojiLabel.text == "✈️" {
            emojiDef.text = "Its a airplane"
        } else if emojiLabel.text == "💣" {
            emojiDef.text = "Its a bomb"
        } else if emojiLabel.text == "👻" {
            emojiDef.text = "Its a ghost"
        } else if emojiLabel.text == "👞" {
            emojiDef.text = "Its a brown shoe"
        } else if emojiLabel.text == "😹" {
            emojiDef.text = "Its a happy cat"
        }
        
    }//

   
    
    
    
}//
