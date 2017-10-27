//
//  PasswordViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2017-10-26.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {
    
    var emailAddress: String? = nil
    
    @IBOutlet weak var passwordTextBox: UITextField!
    @IBOutlet weak var confirmPasswordTextBox: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetails" {
            if let controller: DetailsViewController = segue.destination as? DetailsViewController {
                
                controller.emailAddress = emailAddress
                controller.password = passwordTextBox.text
                
            }
        }
    }
}
