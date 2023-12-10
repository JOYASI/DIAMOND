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
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToHomePage", sender: self)
    }
    
}
