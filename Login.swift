//
//  Login.swift
//  Rookie
//
//  Created by Elvis Tapfumanei on 11/11/16.
//  Copyright © 2016 Elmunei. All rights reserved.
//

import UIKit
import CoreData

class Login: UIViewController {
    
    @IBOutlet weak var loginEmailTextField: UITextField!
    
    @IBOutlet weak var loginPasswordTextField: UITextField!
    
    @IBOutlet weak var changePasswordTextField: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     // MARK: - Navigation
    
    @IBAction func loginButton(_ sender: UIButton) {
        //let appDel:AppDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "email = %@", "" + loginEmailTextField.text!)
        
        let results:NSArray = try! context.fetch(request) as NSArray
        
        
        
        if(results.count > 1){
            let res = results[0] as! NSManagedObject
            loginEmailTextField.text = res.value(forKey: "email") as? String
            loginPasswordTextField.text = res.value(forKey: "password") as? String
            
            //for res in results {
            //   print(res)
            
            
        }else{
            print("Incorrect username and password")
        }
  
        
    }
    
    @IBAction func changePasswordButton(_ sender: UIButton) {
    }
    
    
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
    
    
}
