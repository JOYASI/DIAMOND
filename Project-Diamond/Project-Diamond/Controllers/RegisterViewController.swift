//
//  RegisterViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 09/12/2023.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text != "Sign Up" {
            self.performSegue(withIdentifier: "registerToLogin", sender: self)
        }
        else {
            //for later but this is if Sign up button is pressed}
        }
    }
}
