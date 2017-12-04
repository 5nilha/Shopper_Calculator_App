//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Fabio Quintanilha on 12/4/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

@IBDesignable // this allow the changes to be shown on the interface builder (main storyboard), not only on run time

class CurrencyTextField: UITextField {

    //Creates a label to show the currency simbol inside the textField
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20 // creates the height and width of the label
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8774775863, green: 0.8722619414, blue: 0.8814873099, alpha: 0.7955907534)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current  //local currency
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
    }
    
    
    //this function allow to show the changes on the Interface Builder
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2504280822)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place // overwrite the regular placeholder
        }
        
    }

}
