//
//  ConversationViewController.swift
//  SwiftThemeBasedChatUI
//
//  Created by Javed Multani on 14/11/21.
//

import UIKit

class ConversationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var conversationTableView: UITableView!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        conversationTableView.delegate = self
        conversationTableView.dataSource = self
        
        conversationTableView.rowHeight = UITableView.automaticDimension
        conversationTableView.estimatedRowHeight = 100.0
        
        self.title = "My Chat"
       
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        conversationTableView.reloadData()
    }
    //MARK: - UITableView Delegate & Datasource
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.userListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : ConversationTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "ConversationTableViewCell") as? ConversationTableViewCell
        if cell == nil {
            tableView.register(UINib.init(nibName: "ConversationTableViewCell", bundle: nil), forCellReuseIdentifier: "ConversationTableViewCell")
            let arrNib : Array = Bundle.main.loadNibNamed("ConversationTableViewCell", owner: self, options: nil)!
            cell = arrNib.first as? ConversationTableViewCell
        }
        let user = appDelegate.userListArray[indexPath.row]
        cell?.userNameLabel.text = user.name ?? ""
        cell?.userPic.image = UIImage(named: user.userProfilePic!)
        let filter =  appDelegate.messageListArray.filter { $0.user == user}
        cell?.chatLabel.text = filter.last?.messageText ?? ""
        //cell?.showOutgoingMessage(text: messageArray[indexPath.row])
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
        let user = appDelegate.userListArray[indexPath.row]
        vc.messageList =  appDelegate.messageListArray.filter { $0.user == user}
        vc.selectedUser = user 
         self.navigationController?.pushViewController(vc, animated: true)
    }



}
