//
//  CharViewController.swift
//  Chat
//
//  Created by Javed Multani on 14/11/2021.
//  Copyright © 2021 Javed Multani. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var selectedUser: User?
    var messageList = [Message]()
    
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var chatTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        chatTableView.rowHeight = UITableView.automaticDimension
        chatTableView.estimatedRowHeight = 100.0
        
        chatTableView.register(UINib.init(nibName: "SenderTableViewCell", bundle: nil), forCellReuseIdentifier: "SenderTableViewCell")
        chatTableView.register(UINib.init(nibName: "ReceiverTableViewCell", bundle: nil), forCellReuseIdentifier: "ReceiverTableViewCell")
        
        self.title = selectedUser?.name ?? "Chat"
        self.view.endEditing(true)
        
        DispatchQueue.main.async {
            let indexPath = NSIndexPath(row: (self.messageList.count-1), section: 0)
            self.chatTableView.reloadData()
            self.chatTableView.scrollToRow(at: indexPath as IndexPath, at: UITableView.ScrollPosition.middle, animated: true)
        }
        
        // Do any additional setup after loading the view.
    }
    //MARK: - UITableView Delegate & Datasource
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messageList[indexPath.row]
        if !message.isSender!{
            let cell : SenderTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "SenderTableViewCell") as? SenderTableViewCell
            cell?.profileImage.image = UIImage(named: (self.selectedUser?.userProfilePic!)!)
            cell?.messageLabel.text = message.messageText
            return cell!
        }else{
            let cell : ReceiverTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "ReceiverTableViewCell") as? ReceiverTableViewCell
            cell?.messageLabel.text = message.messageText
            return cell!
        }
    }
    @IBAction func sendMessageButtonHandler(_ sender: Any) {
        if self.messageTextField.text! != ""{
            let message = Message(meesageText: self.messageTextField.text!, isSender: true, user: selectedUser!)
            self.appDelegate.messageListArray.append(message)
            self.messageList.append(message)
            DispatchQueue.main.async {
                self.messageTextField.text! = ""
                
                let indexPath = NSIndexPath(row: (self.messageList.count-1), section: 0)
                self.chatTableView.reloadData()
                self.chatTableView.scrollToRow(at: indexPath as IndexPath, at: UITableView.ScrollPosition.middle, animated: true)
            }
            
        }
    }
    
    
    
}
