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
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print (e.localizedDescription)
            } else {
                self.performSegue(withIdentifier: "Login", sender: self)
            }
        }
    }
}
