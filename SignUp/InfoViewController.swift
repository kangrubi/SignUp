//
//  InfoViewController.swift
//  SignUp
//
//  Created by 강루비 on 2022/01/04.
//

import UIKit

class InfoViewController: UIViewController {

// properties
    var nameText: String?
    var emailText: String?
    var passwordText: String?
    
// UI
    @IBOutlet weak var InfoNameLabel: UILabel!
    @IBOutlet weak var InfoEmailLabel: UILabel!
    @IBOutlet weak var InfoPasswordLabel: UILabel!

// view life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        InfoNameLabel.text = nameText
        InfoEmailLabel.text = emailText
        InfoPasswordLabel.text = passwordText
        
    }
    
    

}
