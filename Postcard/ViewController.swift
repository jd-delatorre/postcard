//
//  ViewController.swift
//  Postcard
//
//  Created by John De La Torre on 9/24/14.
//  Copyright (c) 2014 reach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden=false
        messageLabel.text = enterMessageField.text
        
        //updating label color using code
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageField.text=""
        enterMessageField.resignFirstResponder()  //removes keyboard
        
        //updating our button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

