//
//  ViewController.swift
//  TipsyCalculatorApp
//
//  Created by Alisher Abdukarimov on 2/28/17.
//  Copyright © 2017 nightOwlPizza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculationValues()
        updateUI()
    }
    
    func setTipCalculationValues() {
    
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.calculateTip()
    }
    
    func updateUI(){
    
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLbl.text = "Tip:\(Int(tipPercentageSlider.value * 100 ))%"
            
        
    }
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    @IBAction func billAmountWasChanged(_ sender: Any) {
        print("My Value Changed")
        setTipCalculationValues()
        updateUI()
    }
    
    
    @IBAction func tipPercentageDidChange(_ sender: UISlider) {
        let steps: Float = 100
        let roundedValue = round(sender.value * steps) / steps
        sender.value = roundedValue
        
        
        print(tipPercentageSlider.value)
        setTipCalculationValues()
        updateUI()
    }
    
    



}

