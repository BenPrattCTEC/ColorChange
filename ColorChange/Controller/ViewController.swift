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
        self.view.backgroundColor = self.randomColor()
    }
    
    private func randomColor() -> UIColor{
        return UIColor(red: CGFloat(Float(arc4random()%8)/8.0), green: CGFloat(Float(arc4random()%8)/8.0), blue: CGFloat(Float(arc4random()%8)/8.0), alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
//            while(true){
//                self.view.backgroundColor = UIColor(red: CGFloat(Float(arc4random()%8)/8.0), green: CGFloat(Float(arc4random()%8)/8.0), blue: CGFloat(Float(arc4random()%8)/8.0), alpha: 1)
//                sleep(1)
//            }
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

