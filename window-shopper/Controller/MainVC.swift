//
//  ViewController.swift
//  window-shopper
//
//  Created by Fabio Quintanilha on 12/4/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        
        //creates a button programmaticaly
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.6017764211, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        //Adds the action to the button when the button is pressed
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
        
    }

    @objc func calculate() {
        
        //The calculator will only works if have data inside these fields
        if let wageTextField = wageTxt.text, let priceTextField = priceTxt.text {
            //the line bellow takes the text passed and converts do Double. If a letter is passed the lines fail and the calculate won't happen
            if let wage = Double(wageTextField), let price = Double(priceTextField) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }
        
    }

    @IBAction func clearCalculationPressed(_ sender: UIButton) {
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
}

