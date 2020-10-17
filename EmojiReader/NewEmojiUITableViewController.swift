 //
//  NewEmojiUITableViewController.swift
//  EmojiReader
//
//  Created by Никита Полыко on 10/16/20.
//

import UIKit

class NewEmojiUITableViewController: UITableViewController {

    
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITableViewCell!
    @IBOutlet weak var descriptionTextField: UITableViewCell!
    
    
    @IBAction func textChanged(_ sender: UITextField) {
    }
    
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
  }
