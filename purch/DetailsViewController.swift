//
//  DetailsViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2017-10-26.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit
import Firebase

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var addressTextBox: UITextField!
    
    @IBOutlet weak var cityTextBox: UITextField!
    
    @IBOutlet weak var provinceTextBox: UITextField!
    @IBOutlet weak var postalCodeTextBox: UITextField!
    
    @IBOutlet weak var finishButton: UIButton!
    
    var emailAddress: String? = nil
    var password: String? = nil
    var address: String? = nil
    var city: String? = nil
    var postalCode: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createAccount( email: String,  password: String) {
        var email = email
        var password = password
        
//        Auth.auth().createUser(withEmail: email, password: password)
    }
}
