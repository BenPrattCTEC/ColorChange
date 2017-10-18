//
//  MediaController.swift
//  ColorChange
//
//  Created by Pratt, Benjamin on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class MediaController: UIViewController{
    
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = ColorTools.lastColor
        
    }
    
   public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
