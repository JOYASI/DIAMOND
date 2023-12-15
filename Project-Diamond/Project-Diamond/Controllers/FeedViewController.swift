//
//  HomeViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 09/12/2023.
//

import UIKit

class FeedViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var feedPosts: [FeedPostCard] = [
        FeedPostCard(companyName: "JPMorgan", feedPosttext: "Applications are now open!"),
        FeedPostCard(companyName: "Evercore", feedPosttext: "Applications are now open!"),
        FeedPostCard(companyName: "BofA", feedPosttext: "Applications are now open!"),
        FeedPostCard(companyName: "RBC", feedPosttext: "Applications are now open!"),
        FeedPostCard(companyName: "RBS", feedPosttext: "Applications are now open!"),
        FeedPostCard(companyName: "Google", feedPosttext: "Applications are now open!"),
        FeedPostCard(companyName: "Amazon", feedPosttext: "Applications are now open!")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //set up for the table view:
        tableView.dataSource = self
        tableView.delegate = self
        
        //register the FeedPostCell that we made
        tableView.register(UINib(nibName: K.feedPostCellNibName, bundle: nil), forCellReuseIdentifier: K.feedPostCellIdentifier)
    }

}

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        feedPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.feedPostCellIdentifier, for: indexPath) as! FeedPostCell
        cell.companyNameLabel.text = feedPosts[indexPath.row].companyName
        cell.feedPostTextLabel.text = feedPosts[indexPath.row].feedPosttext
        
        return cell
    }
    
}

extension FeedViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //this code will be executed when one of the cells is pressed on/ interacted with
    }
}
