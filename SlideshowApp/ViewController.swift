//
//  ViewController.swift
//  SlideshowApp
//
//  Created by yamasaki ginjiro on 2016/05/28.
//  Copyright © 2016年 ginjiro.yamasaki. All rights reserved.
//

import UIKit

class ViewController:



UIViewController {
    var imagenumber:Int = 0
    var imageButton: UIButton!
    var timerRunning = false
    var timer: NSTimer!
    func update(){
       imagenumber += 1
        if imagenumber > 4{
            imagenumber = 0
        }
         changebuttonimage()
           }
    
    
    @IBOutlet weak var startstopButton: UIButton!
    
    @IBAction func startstop(sender: AnyObject) {
        nextButton.enabled = true
        backButton.enabled = true
        if  timerRunning == true {
            timer.invalidate()
            timerRunning = false
        }
       else if timerRunning == false {
            nextButton.enabled = false
            backButton.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(update), userInfo: nil, repeats: true)
            timerRunning = true
            
        }
       changebuttonimage()
    }

       @IBOutlet weak var nextButton: UIButton!
    @IBAction func next(sender: AnyObject) {
        imagenumber=imagenumber+1
        if imagenumber > 4 {
            imagenumber = 0
        }
        changebuttonimage()
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBAction func back(sender: AnyObject) {
        imagenumber=imagenumber-1
        if imagenumber < 0 {
           imagenumber = 4
        }
        changebuttonimage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       // let buttonimage:UIImage = UIImage (named: "image2.jpeg")!
       // imageButton .setImage(buttonimage, forState: UIControlState.Normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func changebuttonimage() {
        var buttonimage:UIImage?
        if imagenumber == 0 {
             buttonimage = UIImage (named: "image0.jpg")!
        }else if imagenumber == 1 {
            buttonimage = UIImage (named: "image1.jpeg")!
        }else if imagenumber == 2 {
            buttonimage = UIImage (named: "image2.jpeg")!
        }else if imagenumber == 3 {
            buttonimage = UIImage (named: "image3.jpeg")!
        }else if imagenumber == 4 {
            buttonimage = UIImage (named: "image4.jpeg")!

        }
        imageButton .setImage(buttonimage, forState: UIControlState.Normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
       
      let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
    resultViewController.imageBtn = imageButton.currentImage
        
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
    
}

