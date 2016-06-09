//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by yamasaki ginjiro on 2016/06/08.
//  Copyright © 2016年 ginjiro.yamasaki. All rights reserved.
//

import UIKit
class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

   
    var imageBtn: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = imageBtn

        // Do any additional setup after loading the view.
        
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
