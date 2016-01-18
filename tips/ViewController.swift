//
//  ViewController.swift
//  tips
//
//  Created by Mudit Mittal on 1/13/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billAmount.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onValueChange(sender: AnyObject) {
        var bill = Double(billAmount.text!)
        let tipValues = [0.10, 0.15, 0.20, 0.0]
        let percent = tipValues[tipPercent.selectedSegmentIndex]

        if bill == nil {
            bill = 0.0
        }

        let tip = bill! * percent
        let total = bill! + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}


