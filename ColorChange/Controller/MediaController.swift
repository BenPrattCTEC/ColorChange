//
//  MediaController.swift
//  ColorChange
//
//  Created by Pratt, Benjamin on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class MediaController: UIViewController{
    
    
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    
    private var imageCounter = 0
    
    
    @IBAction func imageAction(_ sender: UIButton) {
        changeImage()
    }
    
    @IBAction func soundAction(_ sender: UIButton) {
    }
    
    @IBAction func volumeSliderAction(_ sender: UISlider) {
    }
    
    private func playSound(){
    }
    
    private func changeImage(){
        imageCounter+=1
        if(imageCounter>=3){
            imageCounter = 0;
        }
        
        if(imageCounter == 0){
            imageViewer.image = UIImage(named: "MarioSprite")
        }
        else if(imageCounter == 1){
            imageViewer.image = UIImage(named: "LuigiSprite")
        }
        else{
            imageViewer.image = UIImage(named: "MarioHead")
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = ColorTools.lastColor
        
    }
    
   public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
