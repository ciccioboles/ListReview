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
    @IBOutlet weak var emojiCategory: UILabel!
    @IBOutlet weak var birthDate: UILabel!
    
    var emojiPassed = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()


    emojiLabel.text = emojiPassed.stringEmoji
        birthDate.text = "BirthYear: \(emojiPassed.birthYear)"
        emojiCategory.text = "Category: \(emojiPassed.category)"
        emojiDef.text = emojiPassed.definition
        
    }//

   
    
    
    
}//
