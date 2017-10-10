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
        view.backgroundColor = randomColor()
    }
    
    private func randomColor() -> UIColor{
        return UIColor(red: CGFloat(Float(arc4random()%8)/8.0), green: CGFloat(Float(arc4random()%8)/8.0), blue: CGFloat(Float(arc4random()%8)/8.0), alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = randomColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

