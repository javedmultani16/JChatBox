//
//  ConversationTableViewCell.swift
//  SwiftThemeBasedChatUI
//
//  Created by Javed Multani on 14/11/21.
//

import UIKit

class ConversationTableViewCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var userPic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userPic.layer.cornerRadius = userPic.frame.height / 2.0
        userPic.clipsToBounds = true
        
        userPic.layer.borderWidth = 1.5
        userPic.layer.borderColor = UIColor.random.cgColor
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }
}
