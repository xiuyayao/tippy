//
//  ViewController.swift
//  tippy
//
//  Created by Xiuya Yao on 6/20/17.
//  Copyright © 2017 Xiuya Yao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        // print("Hello")
        view.endEditing(true) // Dismiss keyboard
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        // 0 is default value if invalid input
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    // when user clicks "Settings" button
    @IBAction func Settings(_ sender: Any) {
        performSegue(withIdentifier: "settingsSegue", sender: self)
    }
    // Outlet means "this will display blah"
    // Action means doing something
    
    

    
}

