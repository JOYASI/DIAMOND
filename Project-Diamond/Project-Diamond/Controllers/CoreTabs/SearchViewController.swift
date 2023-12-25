//
//  SearchViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 10/12/2023.
//



import UIKit

//*********DO NOT ADD A BOTTOM CONSTRAINT TO THE TABLEVIEW AS IT WILL NOT WORK PROPERLY!

class SearchViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    var jobPosts: [JobPostCard] = [
        JobPostCard(companyName: "JPMorgan", roleName: "Software Engineer"),
        JobPostCard(companyName: "JPMorgan", roleName: "Sales & Trading"),
        JobPostCard(companyName: "JPMorgan", roleName: "Strategy Associate"),
        JobPostCard(companyName: "JPMorgan", roleName: "Fixed Income Analyst"),
        JobPostCard(companyName: "Evercore", roleName: "Fixed Income Analyst"),
        JobPostCard(companyName: "Evercore", roleName: "FIG"),
        JobPostCard(companyName: "Bank of America", roleName: "Cyber Security"),
        JobPostCard(companyName: "Google", roleName: "Junior DevOps"),
        JobPostCard(companyName: "Google", roleName: "Senior DevOps"),
        JobPostCard(companyName: "JPMorgan", roleName: "Software Engineer"),
        JobPostCard(companyName: "JPMorgan", roleName: "Sales & Trading"),
        JobPostCard(companyName: "JPMorgan", roleName: "Strategy Associate"),
        JobPostCard(companyName: "JPMorgan", roleName: "Fixed Income Analyst"),
        JobPostCard(companyName: "Evercore", roleName: "Fixed Income Analyst"),
        JobPostCard(companyName: "Evercore", roleName: "FIG"),
        JobPostCard(companyName: "Bank of America", roleName: "Cyber Security"),
        JobPostCard(companyName: "Google", roleName: "Junior DevOps")

    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        //the xib file that has the cell template for the jobPosts tableView needs to be intialised
        
        //the nibName is the name of the .xib file - (it's called nib because that was the old name now it's xib)
        //this is just registering the cell, we have to actually create it too
        tableView.register(UINib(nibName: K.jobPostCellNibName, bundle: nil), forCellReuseIdentifier: K.jobPostCellIdentifier)
       
    }

}

extension SearchViewController: UITableViewDataSource {
    
    //this func needs to know how many rows there will be in the table -> how many job listings
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //for now just say the length of the list i made above but in reality this will be taken from the datatbase where all jobs are stored
        return jobPosts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //for the cell to have the properties that the JobPostCell has, we have to use as! (explained in more detail later) followed by the name of the class.
        let cell = tableView.dequeueReusableCell(withIdentifier: K.jobPostCellIdentifier, for: indexPath) as! JobPostCell
        cell.companyNameLabel.text = jobPosts[indexPath.row].companyName
        cell.roleNameLabel.text = jobPosts[indexPath.row].roleName
        //here we are setting the delegate of the cell. remember that self is referring to the class -> i.e the SearchViewController
        cell.delegate = self
        cell.bookmarkButton.tag = indexPath.row
        cell.checkmarkButton.tag = indexPath.row
        //print(jobPosts[indexPath.row].companyName)
        return cell
        
    }
}

//based on the protocol "MyTableViewCellDelegate" we created, we need to to add the relevant functions so that the SearchViewController conforms to it.
extension SearchViewController: UITableViewDelegate, MyTableViewCellDelegate {

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //this code will be executed when one of the cells is pressed on -> needed for the detailed view later on
        performSegue(withIdentifier: K.goToDetail, sender: self)
        
        //to deselect the cell after it's pressed:
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func checkmarkPressed(with button: UIButton) {
        
        button.backgroundColor = .systemRed
        //reload the tableview:
        tableView.reloadData()

    }
    
    func bookmarkPressed(with button: UIButton) {
        
        button.backgroundColor = .systemPink
        //reload the tableview:
        tableView.reloadData()
        
        print(button.tag)
        
    }
    
}
