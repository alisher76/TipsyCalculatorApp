//
//  TipModel.swift
//  TipsyCalculatorApp
//
//  Created by Alisher Abdukarimov on 2/28/17.
//  Copyright © 2017 nightOwlPizza. All rights reserved.
//

import Foundation


class TipModel {
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipAmount = tipPercent
    }
    
    func calculateTip() {
    
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
}
