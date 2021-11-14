//
//  AppDelegate.swift
//  SwiftThemeBasedChatUI
//
//  Created by Javed Multani on 13/11/21.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var messageListArray = [Message]()
  var userListArray = [User]()
 var loginUser = User(name: "Mr.Javed Multani", userProfilePic: "me")
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        IQKeyboardManager.shared.enable = true
        self.loadUser()
        self.loadMessage()
        return true
    }
   
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func loadUser(){
       
        let userList = [User(name: "Jenny Lee", userProfilePic: "user1"),User(name: "Thomas Walker", userProfilePic: "user2"),User(name: "Ketty Steven", userProfilePic: "user3"),User(name: "Olivia Peterson", userProfilePic: "user4"),User(name: "Isabella Charlotte", userProfilePic: "user5")]

        userListArray = userList
        
    }
    func loadMessage(){
        addMessageUser0()
        addMessageUser1()
        addMessageUser2()
        addMessageUser3()
        addMessageUser4()
        
    }
    
    func addMessageUser0(){
        let message1 = Message(meesageText: "Hi", isSender: true, user: userListArray[0])
        let message2 = Message(meesageText: "Hello", isSender: false, user: userListArray[0])
        let message3 = Message(meesageText: "How are you?", isSender: true, user: userListArray[0])
        let message4 = Message(meesageText: "Fine what about you?", isSender: false, user: userListArray[0])
        let message5 = Message(meesageText: "I am also fine", isSender: true, user: userListArray[0])
        let message6 = Message(meesageText: "I bought T.V. price 2450$ and order number is T34248902, I see the T.V. have loud noice like sparking from back speaker. Can you please send technical person who can assist me?", isSender: false, user: userListArray[0])
        
        self.messageListArray.append(message1)
        self.messageListArray.append(message2)
        self.messageListArray.append(message3)
        self.messageListArray.append(message4)
        self.messageListArray.append(message5)
        self.messageListArray.append(message6)
    }
    func addMessageUser1(){
        let message1 = Message(meesageText: "Hi", isSender: true, user: userListArray[1])
        let message2 = Message(meesageText: "Hello", isSender: false, user: userListArray[1])
        let message3 = Message(meesageText: "How are you?", isSender: true, user: userListArray[1])
        let message4 = Message(meesageText: "Fine what about you?", isSender: false, user: userListArray[1])
        let message5 = Message(meesageText: "give me notes please", isSender: true, user: userListArray[1])
        let message6 = Message(meesageText: "Each service is unique. It can never be exactly repeated as the time, location, circumstances, conditions, current configurations and/or assigned resources are different for the next delivery, even if the same service is requested by the consumer. Many services are regarded as heterogeneous and are typically modified for each service-consumer or for each service-context.[2] Example: The taxi service which transports the service consumer from home to work is different from the taxi service which transports the same service consumer from work to home – another point in time, the other direction, possibly another route, probably another taxi-driver and cab. Another and more common term for this is heterogeneity.", isSender: false, user: userListArray[1])
        
        self.messageListArray.append(message1)
        self.messageListArray.append(message2)
        self.messageListArray.append(message3)
        self.messageListArray.append(message4)
        self.messageListArray.append(message5)
        self.messageListArray.append(message6)
    }
    func addMessageUser2(){
        let message2 = Message(meesageText: "Hello", isSender: false, user: userListArray[2])
        let message3 = Message(meesageText: "Yes?", isSender: true, user: userListArray[2])
        let message4 = Message(meesageText: "what about class?", isSender: false, user: userListArray[2])
        let message5 = Message(meesageText: "give me notes", isSender: true, user: userListArray[2])
        let message6 = Message(meesageText: "The taxi service which transports the service consumer from home to work is different from the taxi service which transports the same service consumer from work to home – another point in time, the other direction, possibly another route, probably another taxi-driver and cab. Another and more common term for this is heterogeneity.", isSender: false, user: userListArray[2])
        
        self.messageListArray.append(message2)
        self.messageListArray.append(message3)
        self.messageListArray.append(message4)
        self.messageListArray.append(message5)
        self.messageListArray.append(message6)
    }
    func addMessageUser3(){
        let message2 = Message(meesageText: "Hello", isSender: false, user: userListArray[3])
        let message3 = Message(meesageText: "let start", isSender: true, user: userListArray[3])
        let message4 = Message(meesageText: "what about ZOO?", isSender: false, user: userListArray[3])
        let message5 = Message(meesageText: "A zoo, also known as a zoological park or zoological garden, is a place where animals are confined within enclosures for the public to view. Many zoos also breed the animals. ... There are hundreds of zoos all over the world, but the first zoo was called the Ménagerie du Jardin des Plantes.", isSender: true, user: userListArray[3])
        let message6 = Message(meesageText: "A zoo is a facility in which animals are housed within enclosures, cared for, displayed to the public, and in some cases bred for conservation purposes. The term zoological garden refers to zoology.", isSender: false, user: userListArray[3])
        
        self.messageListArray.append(message2)
        self.messageListArray.append(message3)
        self.messageListArray.append(message4)
        self.messageListArray.append(message5)
        self.messageListArray.append(message6)
    }
    func addMessageUser4(){
       
        let message1 = Message(meesageText: "Tell me issue", isSender: true, user: userListArray[4])
        let message2 = Message(meesageText: "I bought T.V. price 2450$ and order number is T34248902, I see the T.V. have loud noice like sparking from back speaker. Can you please send technical person who can assist me?", isSender: false, user: userListArray[4])
        let message3 = Message(meesageText: "I will come at your place", isSender: true, user: userListArray[4])
        
        self.messageListArray.append(message1)
        self.messageListArray.append(message2)
        self.messageListArray.append(message3)
    }
}




























