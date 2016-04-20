//
//  ViewController.swift
//  Calculator
//
//  Created by Hanief on 4/20/16.
//  Copyright © 2016 Cahya Utama Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyOnDisplay = display.text!
            
            display.text = textCurrentlyOnDisplay + digit
        } else {
            display.text = digit
        }
        
        userIsInTheMiddleOfTyping = true
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        
        if let mathOperation = sender.currentTitle {
            if mathOperation == "π" {
                display.text = String(M_PI)
            }
        }
    }
}

