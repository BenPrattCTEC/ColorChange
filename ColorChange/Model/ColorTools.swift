//
//  ColorTools.swift
//  ColorChange
//
//  Created by Pratt, Benjamin on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
import UIKit

public class ColorTools{
    
    public static var lastColor: UIColor = UIColor(red: CGFloat(Float(arc4random()%8)/8.0), green: CGFloat(Float(arc4random()%8)/8.0), blue: CGFloat(Float(arc4random()%8)/8.0), alpha: 1)
                                            //UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    public static func randomColor() -> UIColor{
        lastColor = UIColor(red: CGFloat(Float(arc4random()%8)/8.0), green: CGFloat(Float(arc4random()%8)/8.0), blue: CGFloat(Float(arc4random()%8)/8.0), alpha: 1)
        return lastColor
    }
    
}
