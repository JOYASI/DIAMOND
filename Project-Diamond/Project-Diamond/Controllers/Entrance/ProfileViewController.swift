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
        view.backgroundColor = .systemBackground
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutPressed(_ sender: UIButton) {
        
        do {
          try Auth.auth().signOut()
            
            navigationController?.popViewController(animated: true)
            
            //sign out is working in the database but it doens't go to the logout page yet
            print("SIgned out")
            
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
    }
    
}
