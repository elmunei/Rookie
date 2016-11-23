//
//  Registration.swift
//  Rookie
//
//  Created by Elvis Tapfumanei on 11/11/16.
//  Copyright © 2016 Elmunei. All rights reserved.
//

import UIKit
import CoreData

class Registration: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var regScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
   }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        regScrollView.setContentOffset(CGPoint(x: 0, y:250), animated: true)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
         regScrollView.setContentOffset(CGPoint(x: 0, y:0), animated: true)
        
        return true
    }
    
    
     // MARK: - Navigation
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        //let appDel:AppDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context) as NSManagedObject
        newUser.setValue(fullNameTextField.text, forKey: "username")
        newUser.setValue(passwordTextField.text, forKey: "password")
        newUser.setValue(emailTextField.text, forKey: "email")
        
        do {
            try context.save()
        } catch {}
        
        print(newUser)
        print("Object Saved.")
        
    }
    
    
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
    
}
