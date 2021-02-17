//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Rachana Kotamraju on 2/9/21.
//

import UIKit

class ViewController:
    UIViewController {
    @IBOutlet weak var
        TipAmountLabel: UILabel!
    @IBOutlet weak var
        TipSegmentedControl: UISegmentedControl!
    @IBOutlet weak var
        BillAmountTextfield: UITextField!
    @IBOutlet weak var TotalAmountLabel: UILabel!
    
    let tipPercents: [Double] = [0.10, 0.15, 0.20, 0.25]
    
    var tipPercent : Double = 0.10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TipAmountLabel.text = "$0.00"
        TotalAmountLabel.text = "$0.00"
        
    }

    @IBAction func didTapCalculate(_ sender: Any) {
        
        let billString = BillAmountTextfield.text!
        
        guard let billAmount = Double(billString) else {return}
        
        var tipAmount = billAmount * tipPercent
        
        if billString.trimmingCharacters(in: .whitespacesAndNewlines) == ""{return}
        TipAmountLabel.text = String(format: "$%.2f", tipAmount)
        
        let totalAmount = billAmount + tipAmount
        
        TotalAmountLabel.text = String(format: "$%.2f", totalAmount)
        
    }
    @IBAction func didTapSegmentedControl(_ sender: UISegmentedControl) {
        tipPercent = tipPercents[sender.selectedSegmentIndex]
    }
    
}

