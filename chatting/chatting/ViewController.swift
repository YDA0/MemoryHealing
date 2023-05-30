//
//  ViewController.swift
//  chatting
//
//  Created by 장세림 on 2023/05/26.
//

import UIKit
import FirebaseCore

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupBtn(_ sender: UIButton) {
        
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        print("loginBtn")
        guard let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginView") as? LoginViewController else { return }
        self.navigationController?.pushViewController(loginVC, animated: true)
    }

    @UIApplicationMain
    class AppDelegate: UIResponder, UIApplicationDelegate {

      var window: UIWindow?

      func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
          [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
          FirebaseApp.configure()
        return true
      }
    }

}

