//
//  Colors.swift
//  Handwriting
//
//  Created by Collin Hundley on 5/1/17.
//  Copyright © 2017 Swift AI. All rights reserved.
//

import UIKit


extension UIColor {
    
    static func saiExtraLightGray(alpha: CGFloat = 1) -> UIColor {
        return UIColor(white: 0.94, alpha: alpha) // 240
    }
    
    static func saiOrange(alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: 229 / 255, green: 127 / 255, blue: 71 / 255, alpha: alpha)
    }
    
    static func saiRed(alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: 221 / 255, green: 72 / 255, blue: 57 / 255, alpha: alpha)
    }
    
    static func saiGreen(alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: 61 / 255, green: 255 / 255, blue: 43 / 255, alpha: alpha)
    }
    
}
