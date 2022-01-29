//
//  ViewController.swift
//  SimpleTipCalculator
//
//  Created by Castillo Edith on 1/28/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipPercentageTxt: UITextField!
    
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var finalBillLbl: UILabel!
    @IBOutlet weak var totalAmountTxt: UITextField!
    @IBOutlet weak var calculateTipBtn: UIButton!
    @IBAction func calculateTip(_ sender: Any) {
        let totalAmount:Double = Double(totalAmountTxt.text!)!
        let tip:Double = (Double(tipPercentageTxt.text!)! / 100) * totalAmount
        tipLbl.text = String(format: "$%.02f", tip)
        finalBillLbl.text = String(format: "$%.02f", totalAmount + tip)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }


}

