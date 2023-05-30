//
//  LgoinViewController.swift
//  chatting
//
//  Created by 장세림 on 2023/05/26.
//

import Foundation
import FirebaseAuth
import UIKit

class LoginViewController: ViewController {
    @IBOutlet weak var loginEmailTextField: UITextField!
    
    @IBOutlet weak var loginPasswordTextField: UITextField!
    
    @IBAction func LoginButton(_ sender: Any) {
        guard let email = loginEmailTextField.text else { return }
        guard let password = loginPasswordTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            } else {
                self.performSegue(withIdentifier: "Login", sender: self)
            }
        }
    }
    
}

