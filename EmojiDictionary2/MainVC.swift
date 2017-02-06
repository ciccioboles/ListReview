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
    
    var emojis = ["🐮","👞","👻","😹","✈️","🆘","💡","💣","🌋","🏄","🐺"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
       
    }//
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theCell = UITableViewCell()
        theCell.textLabel?.text = emojis[indexPath.row]
        return theCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let theDefVC = segue.destination as! DefVC
        theDefVC.emoji = sender as! String
    
    }
    
    
    
}//

