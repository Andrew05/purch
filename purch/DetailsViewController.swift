//
//  DetailsViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2017-10-26.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var addressTextBox: UITextField!
    
    @IBOutlet weak var cityTextBox: UITextField!
    
    @IBOutlet weak var provinceTextBox: UITextField!
    @IBOutlet weak var postalCodeTextBox: UITextField!
    
    @IBOutlet weak var finishButton: UIButton!
    
   
    @IBAction func finishButtonWasPressed(_ sender: Any) {
        createAccount(sender: self)
    }
    var emailAddress: String? = nil
    var password: String? = nil
    var address: String? = nil
    var city: String? = nil
    var postalCode: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(emailAddress,password)
    }
    
    func createAccount( sender: AnyObject) {
        if let email = emailAddress {
            if let password = password {
                Auth.auth().createUser(withEmail: email, password: password)
            }
        }
        
    }
}
