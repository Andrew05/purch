//
//  EmailAddressViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2017-10-26.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit

class EmailAdressViewController: UIViewController {
    
    @IBOutlet weak var emailTextBox: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPassword" {
            if let controller: PasswordViewController = segue.destination as? PasswordViewController  {
                
                controller.emailAddress = emailTextBox.text
                
            }
        }
    }
    
    
}
