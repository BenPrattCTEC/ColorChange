//
//  MediaController.swift
//  ColorChange
//
//  Created by Pratt, Benjamin on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

public class MediaController: UIViewController{
    
    
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    
    private var soundPlayer : AVAudioPlayer?
    
    private var imageCounter = 0
    
    
    private let imageArray = [UIImage(named: "MarioSprite"), UIImage(named: "LuigiSprite"), UIImage(named: "MarioHead")]
    
    @IBAction func imageAction(_ sender: UIButton) {
        changeImage()
    }
    
    @IBAction func soundAction(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func volumeSliderAction(_ sender: UISlider) {
    }
    
    private func playSound(){
        
        if let isPlaying = soundPlayer?.isPlaying{
            if(isPlaying){
                    soundPlayer?.pause()
            }else{
                soundPlayer?.play()
            }
            
        }
    }
    
    private func changeImage(){
        
        imageCounter+=1
        if(imageCounter>=imageArray.count){
            imageCounter = 0
        }
        
        imageViewer.image = imageArray[imageCounter]

    }
    
    private func loadAudioFile(){
        if let soundURL = NSDataAsset(name: "Super Mario Bros Song (mp3)"){
            do{
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                
                soundSlider.maximumValue = Float((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }catch{
                print("Audio File Load Error")
            }
        }
    }
    
    @objc private func updateSlider(){
        soundSlider.value = Float((soundPlayer?.currentTime)!)
    }
    
    
    
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = ColorTools.lastColor
        loadAudioFile()
        
    }
    
   public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
