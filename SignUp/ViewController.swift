//
//  ViewController.swift
//  SignUp
//
//  Created by 강루비 on 2022/01/04.
//

import UIKit

class ViewController: UIViewController {

// property - 속성
    
// UI
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
// view life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
// etc function
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InfoSegue" {
            let destination = segue.destination as? InfoViewController
            destination?.nameText = nameTextField.text
            destination?.emailText = emailTextField.text
            destination?.passwordText = passwordTextField.text
        }
    }
    
// action
    @IBAction func previewButtonClicked(_ sender: UIButton) {
        // 미리보기버튼을 눌렀을때 벌어질 일들에 대한 코드 작성
        let name = nameTextField.text!
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        // TextField에 들어있는 정보를 label에 뿌려준다.
        nameLabel.text = name
        emailLabel.text = email
        passwordLabel.text = password
    }
    

}

