//
//  Constants.swift
//  Project-Diamond
//
//  Created by JOYASI on 12/12/2023.
//

import Foundation

//the point of this file is to minimise the use of strings in our code, as the computer won't be able to show if a string has been mistyped and this can cause problems down the line - especially debugging
//so we'll assign strings here to variables and then use them in our code

//it is common practice to name this file Constants, but name the struct K instead.

struct K {
    
    //static allows these variables to be accessed without the need of creating an instance of the struct
    //a static makes it become a type property rather than an instance property.
    //without static, you'd have to do:
    //let someVariable = Constants()
    //someVariable.loginSegue to access it
    static let registerSegue = "registerToMainTab"
    static let loginSegue = "loginToMainTab"
    static let welcomeLoginSegue = "welcomeToLogin"
    static let welcomeRegisterSegue = "welcomeToRegister"
    //this is the identifier of the prototype cell in the tableView in the SearchView
    static let jobPostCellIdentifier = "jobPostReusableCell"
    static let feedPostCellIdentifier = "feedPostReusableCell"
    
    static let jobPostCellNibName = "JobPostCell"
    static let feedPostCellNibName = "FeedPostCell"
    
}
