//
//  ViewController.swift
//  SSHelloWorld
//
//  Created by Amit Bobade on 21/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var labelText: UILabel!
    
    @IBOutlet var textFieldText: UITextField!
    
   
    @IBAction func buttonText(sender: AnyObject) {
        
        
        let name = textFieldText.text
        
        if name!.isEmpty {
            
            let alert = UIAlertController(title: "Error", message: "Please enter a name",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            
            labelText.text = "Hello\(name)!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func setupUI()
    
    {
        labelText.text = "Hello Swift"
        labelText.textColor = UIColor .blackColor()
        labelText.textAlignment = NSTextAlignment.Center
        textFieldText.placeholder = "Enter your name"
        
        
        
    }

}


