//
//  SenderTableViewCell.swift
//  Chat
//
//  Created by Javed Multani on 14/11/2021.
//  Copyright © 2021 Javed Multani. All rights reserved.
//

import UIKit

class SenderTableViewCell: UITableViewCell {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var viewContent: UIView!
    
    @IBOutlet weak var profileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContent.layer.cornerRadius = 9.0
        viewContent.clipsToBounds = true
        
        profileImage.layer.cornerRadius = profileImage.frame.height / 2.0
        profileImage.clipsToBounds = true
        
        profileImage.layer.borderWidth = 1.0
        profileImage.layer.borderColor = UIColor.blue.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
