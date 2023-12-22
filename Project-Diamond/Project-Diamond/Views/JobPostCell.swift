//
//  JobPostCell.swift
//  Project-Diamond
//
//  Created by JOYASI on 12/12/2023.
//

import UIKit

protocol MyTableViewCellDelegate: AnyObject {
    
    func bookmarkPressed(with button: UIButton)
    
    func checkmarkPressed(with button: UIButton)
}

class JobPostCell: UITableViewCell {
    
    //each cell has this delegate variable -> in the viewcontroller file, we will set the delegate of the cells to the viewcontroller.
    weak var delegate: MyTableViewCellDelegate?
    
    @IBOutlet weak var checkmarkButton: UIButton!
    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var jobPostBubble: UIView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var roleNameLabel: UILabel!
    @IBOutlet weak var imageJobPostBubble: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        jobPostBubble.layer.cornerRadius = 20
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //this function configures the bookmark button, so that the appearance can change when toggled
    func configureUI() {
        //define the bookmark images
        let image = UIImage(named: "bookmark")
        let imageFilled = UIImage(named: "bookmark.filled")
        
        //these are built-in to allow images to be set when the button is/ is not selected
        bookmarkButton.setImage(image, for: .normal)
        bookmarkButton.setImage(imageFilled, for: .selected)
    }
    
    @IBAction func checkmarkPressed(_ sender: UIButton) {
        
        delegate?.checkmarkPressed(with: sender)
        print("no")
        
    }
    
    @IBAction func bookmarkPressed(_ sender: UIButton) {

        delegate?.bookmarkPressed(with: sender)
        sender.backgroundColor = .systemPink
        print("yes")
        
    }
     
}
