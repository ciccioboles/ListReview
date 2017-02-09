//
//  MainVC.swift
//  EmojiDictionary2
//
//  Created by David Boles on 2/5/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
        
    }//
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theCell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        theCell.textLabel?.text = emoji.stringEmoji
        return theCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let theDefVC = segue.destination as! DefVC
        theDefVC.emojiPassed = sender as! Emoji
        
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐮"
        emoji1.category = "Animal"
        emoji1.definition = "A cute cow."
        emoji1.birthYear = 2015
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👞"
        emoji2.category = "Thing"
        emoji2.definition = "A brown shoe."
        emoji2.birthYear = 2010
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👻"
        emoji3.category = "Ghost"
        emoji3.definition = "A cute ghost."
        emoji3.birthYear = 2011
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😹"
        emoji4.category = "Animal"
        emoji4.definition = "A laughing cat."
        emoji4.birthYear = 2013
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "✈️"
        emoji5.category = "Thing"
        emoji5.definition = "A airplane."
        emoji5.birthYear = 2010
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🆘"
        emoji6.category = "Thing"
        emoji6.definition = "A SOS sign."
        emoji6.birthYear = 2011
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "💡"
        emoji7.category = "Thing"
        emoji7.definition = "A light bulb."
        emoji7.birthYear = 2010
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "💣"
        emoji8.category = "Thing"
        emoji8.definition = "A small bomb."
        emoji8.birthYear = 2013
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🌋"
        emoji9.category = "Thing"
        emoji9.definition = "A cute cow."
        emoji9.birthYear = 2010
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🏄"
        emoji10.category = "Person"
        emoji10.definition = "A person surfing."
        emoji10.birthYear = 2013
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "🐺"
        emoji11.category = "Animal"
        emoji11.definition = "A cute fox."
        emoji11.birthYear = 2015
        
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8,emoji9,emoji10,emoji11]
    }
    
    
    
}//

