//
//  DetailedViewController.swift
//  Project-Diamond
//
//  Created by JOYASI on 15/12/2023.
//

import UIKit

class DetailedViewController: UIViewController {

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
    
    
    //step 2 is to create the content view
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //step 3 is to create the UI
    
    //look at drawing to see how it was split up - we'll split the content view into 2 parts -> the top view and the middle view
    
    
    //TOP VIEW
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let horizontalStackTopView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let companyLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "briefcase.fill")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "JPMorgan"
        label.numberOfLines = 0
        return label
    }()
    
    let roleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Analyst"
        label.numberOfLines = 0
        return label
    }()
    
    //MIDDLEVIEW
    let middleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let horizontalStackMiddleView: UIStackView = {
        
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let leftLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.he leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont"
        label.numberOfLines = 0
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.text = "Analyst"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    //CONFIGURATIONS
    
    func configureTopView() {
        
        contentView.addSubview(topView)
        //constrain the content and the top view
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            topView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            topView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            topView.heightAnchor.constraint(lessThanOrEqualToConstant: 150)
        ])
        
        topView.addSubview(horizontalStackTopView)
        horizontalStackTopView.axis = .horizontal
        horizontalStackTopView.distribution = .fillEqually
        horizontalStackTopView.spacing = 10
        
        NSLayoutConstraint.activate([
        horizontalStackTopView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 10),
        horizontalStackTopView.leftAnchor.constraint(equalTo: topView.leftAnchor, constant: 10),
        horizontalStackTopView.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: -10),
        //horizontalStackTopView.heightAnchor.constraint(lessThanOrEqualToConstant: 150)
        ])
        
        
        horizontalStackTopView.addArrangedSubview(companyLogo)
        horizontalStackTopView.addArrangedSubview(companyNameLabel)
        horizontalStackTopView.addArrangedSubview(roleNameLabel)
        //horizontalStackTopView.addArrangedSubview(topRightButton)
        
    }
    
    //combine the components for the horizontal stack top view and add to the top view
    //combine the components for the middle view and add to the content view
    func configureMiddleView() {
        
        contentView.addSubview(middleView)
        
        NSLayoutConstraint.activate([
            //the top anchor of the middle view is constrained to the bottom view of the top view
            middleView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 100),
            middleView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            middleView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            //we can't set a bottom contraint because it will mess up the scrolling
            middleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        middleView.addSubview(horizontalStackMiddleView)
        horizontalStackMiddleView.axis = .horizontal
        horizontalStackMiddleView.distribution = .fillEqually
        horizontalStackMiddleView.spacing = 10
        
        NSLayoutConstraint.activate([
        horizontalStackMiddleView.topAnchor.constraint(equalTo: middleView.topAnchor),
        horizontalStackMiddleView.leftAnchor.constraint(equalTo: middleView.leftAnchor, constant: 10),
        horizontalStackMiddleView.rightAnchor.constraint(equalTo: middleView.rightAnchor, constant: -10),
        horizontalStackMiddleView.bottomAnchor.constraint(equalTo: middleView.bottomAnchor)
        ])
        
        horizontalStackMiddleView.addArrangedSubview(leftLabel)
        horizontalStackMiddleView.addArrangedSubview(rightLabel)
        
        
    }
    
    //configure the content view (add top and middle views)
    func configureContentView() {
        
        configureTopView()
        configureMiddleView()
    }
    
    
    //finally configure and add content view to scroll view
    func configureUI() {
        
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
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
        
        configureContentView()
    }

}
