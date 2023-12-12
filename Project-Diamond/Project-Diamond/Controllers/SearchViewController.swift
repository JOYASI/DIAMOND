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
            
        // Do any additional setup after loading the view.
    }

}

extension SearchViewController: UITableViewDataSource {
    
    //this func needs to know how many rows there will be in the table -> how many job listings
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //for now just say the length of the list i made above but in reality this will be taken from the datatbase where all jobs are stored
        return jobPosts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        cell.textLabel?.text = jobPosts[indexPath.row].companyName
        //print(jobPosts[indexPath.row].companyName)
        return cell
        
    }
}

extension SearchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //this code will be executed when one of the cells is pressed on -> needed for the detailed view later on
    }
}
