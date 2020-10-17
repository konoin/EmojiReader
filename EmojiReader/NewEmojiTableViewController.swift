//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Никита Полыко on 10/16/20.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descrptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSaveButtonState()
    }
    
    private func updateSaveButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let discriptionText = descrptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !discriptionText.isEmpty
    }
    
    private func updateUI () {
        
        emojiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        descrptionTextField.text = emoji.description
        
    }
    
    @IBAction func textChange(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let discription = descrptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: discription, isFavourite: self.emoji.isFavourite)
    }
}
