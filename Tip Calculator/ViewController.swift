//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Diego Alejandro Alvis Palencia on 20.06.20.
//  Copyright © 2020 Diego Alejandro Alvis Palencia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billValueField: UITextField!
    @IBOutlet weak var tipPercentageField: UITextField!
    
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTotals(_ sender: Any) {
        if(billValueField.text?.isEmpty == true || tipPercentageField.text?.isEmpty == true) {
            return
        }
        
        let billValue = Double(billValueField.text!)!
        let tipPercentage = Double(tipPercentageField.text!)!
        
        let tip = billValue * (tipPercentage / 100)
        let total = billValue + tip
        
        tipValue.text = "Tip $\(tip)"
        totalAmount.text = "Total $\(total)"
    }

}

