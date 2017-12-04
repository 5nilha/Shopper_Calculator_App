//
//  Wage.swift
//  window-shopper
//
//  Created by Fabio Quintanilha on 12/4/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int (ceil(price / wage )) // ceil will round up the value
    }
    
}
