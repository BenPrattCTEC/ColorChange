//
//  SecondScreenController.swift
//  ColorChange
//
//  Created by Pratt, Benjamin on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondScreenController: UIViewController{
    
    public override func viewDidLoad(){
        super.viewDidLoad()
        self.view.backgroundColor = ColorTools.lastColor
        
    }
    
}
