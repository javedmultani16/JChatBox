//
//  User.swift
//  SwiftThemeBasedChatUI
//
//  Created by Javed Multani on 14/11/21.
//

import Foundation

//Used for User Model
struct User:Equatable {
    var name:String?
    var userProfilePic:String?
    
    init(name:String,userProfilePic:String) {
        self.name = name
        self.userProfilePic = userProfilePic
    }
}
