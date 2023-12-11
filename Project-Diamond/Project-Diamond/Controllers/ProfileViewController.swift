//
//  DetailedViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 09/12/2023.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutPressed(_ sender: UIButton) {
        
        do {
          try Auth.auth().signOut()
            
            navigationController?.popViewController(animated: true)
            
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
    }
    
 
}
