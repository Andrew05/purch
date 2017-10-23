//
//  JobPostViewController.swift
//  
//
//  Created by Andrew Lawrence on 2017-10-22.
//
//

import UIKit

class JobPostViewController: UIViewController {

    @IBOutlet weak var jobPostTextBox: UITextField!
    @IBOutlet weak var payrateTextBox: UITextField!
    @IBOutlet weak var detailsTextBox: UITextField!
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        if (inputIsCorrect() == true) {
      
        } else {
            print("please input a number for payrate")
        }
        
      
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        payrateTextBox.keyboardType = UIKeyboardType.numberPad
        
        
        payrateTextBox.addTarget(self, action: #selector(JobPostViewController.inputIsCorrect), for: UIControlEvents.editingChanged)
       
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isNumber(inputText:String) -> Bool {
        let inputText = inputText
        
        let numberCheck = ".*[0-9]+.*"
        let texttest1 = NSPredicate(format:"SELF MATCHES %@", numberCheck)
        let numberResult = texttest1.evaluate(with: inputText)
        
        return numberResult

    }
    
    
    
    func inputIsCorrect() -> Bool {
        
        if (isNumber(inputText: payrateTextBox.text!) == true) {
            
           
            return true
    }
      
        return false
        

        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
