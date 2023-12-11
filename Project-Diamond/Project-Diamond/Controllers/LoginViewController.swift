//
//  LoginViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 09/12/2023.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        if sender.titleLabel!.text == "Login" {
            self.performSegue(withIdentifier: "loginToMainTab", sender: self)
        }
        else {self.performSegue(withIdentifier: "loginToRegister", sender: self)}
    }
    
    
}
