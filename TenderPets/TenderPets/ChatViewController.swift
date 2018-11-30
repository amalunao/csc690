//
//  ViewController.swift
//  TenderPets
//
//  Created by Mochi on 11/15/18.
//  Copyright © 2018 Alyssa Malunao. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    var messageList: [Message] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let message = messageList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell") as! MessageCell
        
        cell.side = message.num
        cell.currMessage = message.text
        
        return cell
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        if textField.text != "" {
            messageList.append(Message(newText: textField.text!, newNum: 1))
            textField.text = ""
        }
        self.tableView.reloadData()
    }
    
    @IBAction func responseButtonPressed(_ sender: Any) {
        //random number 0-2
        let randomInt = Int.random(in: 0 ..< 3)
        
        switch randomInt {
        case 0:
            messageList.append(Message(newText: "Woof!", newNum: 0))
        case 1:
            messageList.append(Message(newText: "Ruff!", newNum: 0))
        case 2:
            messageList.append(Message(newText: "Bark Bark!", newNum: 0))
        default:
            messageList.append(Message(newText: "Woof!", newNum: 0))
        }
        
        self.tableView.reloadData()
    }
}

