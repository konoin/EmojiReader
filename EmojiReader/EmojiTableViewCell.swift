//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Никита Полыко on 10/16/20.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set (object: Emoji) {
        self.EmojiLabel.text = object.emoji
        self.NameLabel.text = object.name
        self.DescriptionLabel.text = object.description
    }

}
