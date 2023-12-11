//
//  MainTabBarViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 10/12/2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        //initialise the views that we want on our main tab bar
        let vc1 = UINavigationController(rootViewController: FeedViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: ProfileViewController())
        
        //set properties of the tab bar items
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage(systemName: "person")
        
        vc1.title = "Feed"
        vc2.title = "Search"
        vc3.title = "Profile"
        
        //remove this to see how the colour of the icons and titles change
        tabBar.tintColor = .label
        
        //we always have to set them
        setViewControllers([vc1,vc2,vc3], animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
