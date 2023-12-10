//
//  WelcomeViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 09/12/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "Go to Login" {
            self.performSegue(withIdentifier: "goToLogin", sender: self)
        }
        else {
            self.performSegue(withIdentifier: "goToRegister", sender: self)
        }
        
    }
}
