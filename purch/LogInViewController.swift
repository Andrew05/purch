//
//  ViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2016-06-11.
//  Copyright © 2016 Andrew Lawrence. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var purchLogo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        passwordTextField.isSecureTextEntry = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

