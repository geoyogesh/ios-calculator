//
//  ViewController.swift
//  ios-calculator
//
//  Created by GIS on 11/27/15.
//  Copyright © 2015 geoyogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //property
    @IBOutlet weak var display: UILabel!
    
    var userInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        //constant
        let digit = sender.currentTitle!
        if userInTheMiddleOfTypingANumber {
            display.text=display.text! + digit
        }
        else{
            display.text=digit
            userInTheMiddleOfTypingANumber = true
        }
    }
    
}

