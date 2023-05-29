//
//  SignupViewController.swift
//  chatting
//
//  Created by 장세림 on 2023/05/26.
//

import Foundation
import FirebaseAuth
import UIKit

class SignupViewController: ViewController {
    
    @IBOutlet var emailTextField: UITextField!
        @IBOutlet var passwordTextfield: UITextField!
    
    @IBAction func signup(_ sender: UIButton) {
        
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextfield.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            } else {
                self.performSegue(withIdentifier: "SignUp", sender: self)
            }
        }
    }
}
