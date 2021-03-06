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
    
    private var displayValue: Double {
        get {
            
        }
        
        set {
            
        }
    }
    
    private var brain: CalculatorBrain = CalculatorBrain()
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        
        if let mathSymbol = sender.currentTitle {
            brain.performOperation(mathSymbol)
        }
        
        displayValue = brain.result
    }
}

