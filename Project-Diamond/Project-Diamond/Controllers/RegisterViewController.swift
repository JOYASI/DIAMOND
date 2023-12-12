//
//  RegisterViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 09/12/2023.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                }
                else {
                    //user created successfully - let's login
                    self.performSegue(withIdentifier: "registerToMainTab", sender: self)
                    print("successful")
                }
            }
            
        }
        
    }
}
