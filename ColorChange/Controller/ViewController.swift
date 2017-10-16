//
//  ViewController.swift
//  ColorChange
//
//  Created by Pratt, Benjamin on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        self.view.backgroundColor = ColorTools.randomColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.backgroundColor = ColorTools.lastColor
//        DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
//            while(true){
//                self.view.backgroundColor = colorTool.randomColor()
//                sleep(1)
//            }
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

