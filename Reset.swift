//
//  Reset.swift
//  Rookie
//
//  Created by Elvis Tapfumanei on 11/11/16.
//  Copyright © 2016 Elmunei. All rights reserved.
//

import UIKit

class Reset: UIViewController {
    
    
    @IBOutlet weak var resetEmailTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     // MARK: - Navigation
    
    @IBAction func resetEmailButton(_ sender: UIButton) {
    }
    
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
    
    
}
