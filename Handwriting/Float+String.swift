//
//  Float+String.swift
//  Handwriting
//
//  Created by Collin Hundley on 5/2/17.
//  Copyright © 2017 Swift AI. All rights reserved.
//

import Foundation


extension Float {

    /// Returns the receiver's string representation, truncated to the given number of decimal places.
    /// - parameter decimalPlaces: The maximum number of allowed decimal places
    func toString(decimalPlaces: Int) -> String {
        let power = pow(10.0, Float(decimalPlaces))
        return "\((power * self).rounded() / power)"
    }

}
