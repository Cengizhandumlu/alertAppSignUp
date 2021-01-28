//
//  ViewController.swift
//  AlertProject
//
//  Created by cengizhan on 10.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        if userNameTextField.text=="" {
            let alertForUserName=UIAlertController(title: "Error!", message: "Username must be not empty", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
                print("username is empty")
            })
            alertForUserName.addAction(okButton)
            self.present(alertForUserName, animated: true, completion: nil)

        }else if passwordTextField.text=="" || passwordAgainTextField.text==""{
            let alertForPassword=UIAlertController(title: "Error!", message: "Password must be not empty", preferredStyle: UIAlertController.Style.alert)
            let okButton2=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
                print("password is null")
            })
            alertForPassword.addAction(okButton2)
            self.present(alertForPassword, animated: true, completion: nil)
        }/*
         else{
             let alertForPasswordsNotEqual=UIAlertController(title: "Error!", message: "Passwords must be same", preferredStyle: UIAlertController.Style.alert)
             let okButton4=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (<#UIAlertAction#>) in
                 print("passwords are not equal")
             })
             alertForPasswordsNotEqual.addAction(okButton4)
             self.present(alertForPasswordsNotEqual, animated: true, completion: nil)
         }
         */
        
        
    }
    
}

