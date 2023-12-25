//
//  DetailedViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 15/12/2023.
//

import UIKit

class DetailedViewController: UIViewController {

    
    @IBOutlet weak var middleStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //Step 1 is create the scrollview - (was created in the storyboard)
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.showsVerticalScrollIndicator = true
        view.isDirectionalLockEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        return view
    }()
    
    
    //step 2 is to create the content view and everything that will be shown
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //subtitle labels
    
    let roleResponsibilityTitle: UILabel = {
        let label = UILabel()
        label.text = "Role Responsibilities"
        label.font = UIFont(name: "Helvetica Neue", size: 25)
        label.textColor = .systemCyan
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    let hardRequirementsTitle: UILabel = {
        let label = UILabel()
        label.text = "Hard Requirements"
        label.font = UIFont(name: "Helvetica Neue", size: 25)
        label.textColor = .systemCyan
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let softRequirementsTitle: UILabel = {
        let label = UILabel()
        label.text = "Soft Requirements"
        label.font = UIFont(name: "Helvetica Neue", size: 25)
        label.textColor = .systemCyan
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //actual content
    
    let hardRequirementsLabel: UILabel = {
        let label = UILabel()
        label.text = "J.P. Morgan is a global leader in financial services, providing strategic advice and products to the world’s most prominent corporations, governments, wealthy individuals and institutional investors. Our first-class business in a first-class way approach to serving clients drives everything we do. We strive to build trusted, long-term partnerships to help our clients achieve their business objectives."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roleResponsibilitiesLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and rld’s most prominent corporations, governments, wealthy individuals and institutional investors. Our first-class business in a first-class way approach to serving clients drives everything we do. We strive to build trusted, long-term partner m Ipsum Lorem Ipsum is simply dummy text of the printing and rld’s most prominent corporations, governments, wealthy individuals and institutional investors. Our first-class business in a first-class way approach to serving clients drives everything we do. We strive to build trusted, long-term p"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let softRequirementsLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //add and configure the content view to the scrollView
    
    func initialConfigurations () {
        
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: middleStackView.bottomAnchor, constant: 20),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor),
            contentView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
    }
    
    //step 3 is to create the UI
    
    func configureContentView() {
        
        //role responsibility title
        
        contentView.addSubview(roleResponsibilityTitle)
        
        NSLayoutConstraint.activate([
            roleResponsibilityTitle.topAnchor.constraint(equalTo: contentView.topAnchor),
            roleResponsibilityTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            roleResponsibilityTitle.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),

        ])
        
        //actual role responsibility info
        contentView.addSubview(roleResponsibilitiesLabel)
        
        NSLayoutConstraint.activate([
            roleResponsibilitiesLabel.topAnchor.constraint(equalTo: roleResponsibilityTitle.bottomAnchor, constant: 10),
            roleResponsibilitiesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            roleResponsibilitiesLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),

        ])
        
        //hard requirements title
        contentView.addSubview(hardRequirementsTitle)
        
        NSLayoutConstraint.activate([
            hardRequirementsTitle.topAnchor.constraint(equalTo: roleResponsibilitiesLabel.bottomAnchor, constant: 10),
            hardRequirementsTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            hardRequirementsTitle.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),

        ])
        
        //actual hard requirements info
        
        contentView.addSubview(hardRequirementsLabel)
        
        NSLayoutConstraint.activate([
            hardRequirementsLabel.topAnchor.constraint(equalTo: hardRequirementsTitle.bottomAnchor, constant: 10),
            hardRequirementsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            hardRequirementsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),

        ])
        
        //soft requirements title
        
        contentView.addSubview(softRequirementsTitle)
        
        NSLayoutConstraint.activate([
            softRequirementsTitle.topAnchor.constraint(equalTo: hardRequirementsLabel.bottomAnchor, constant: 10),
            softRequirementsTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            softRequirementsTitle.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10)
            ])
        
        //actual soft requirements info
        contentView.addSubview(softRequirementsLabel)
        
        NSLayoutConstraint.activate([
            softRequirementsLabel.topAnchor.constraint(equalTo: softRequirementsTitle.bottomAnchor, constant: 10),
            softRequirementsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            softRequirementsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            softRequirementsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor )
        ])
    }
    
    
    //CONFIGURATIONS
    
    
    //combine the components for the horizontal stack top view and add to the top view
    //combine the components for the middle view and add to the content view
    
    //finally configure and add content view to scroll view
    func configureUI() {
        
        initialConfigurations()
        configureContentView()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.showDetailedViewSegue, sender: self)
    }
}
