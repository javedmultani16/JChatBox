//
//  Message.swift
//  SwiftThemeBasedChatUI
//
//  Created by Javed Multani on 14/11/21.
//

import Foundation

//Used for Message Model
struct Message {
    
    var messageText:String?
    var isSender:Bool?
    var user:User?
    
    init(meesageText:String,isSender:Bool,user:User) {
        self.messageText = meesageText
        self.isSender = isSender
        self.user = user
        
    }
}
