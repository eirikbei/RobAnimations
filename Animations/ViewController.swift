//
//  ViewController.swift
//  Animations
//
//  Created by Eirik Bo Eidsvig on 17/11/15.
//  Copyright © 2015 Eirik Bo Eidsvig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pictureView: UIImageView!
    
    // Create a counter outside any function
    var counter = 1
    
    // Make a timer of type NSTimer to be refered to inside and outside funtions in the viewcontroller class
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up a timer method to be run by the viewDidLoad that is set up to call/run a funtion every chosen time intervall. The function in question is the updating image function
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "updateImage", userInfo: nil, repeats: true)
        
    }
    
    func updateImage() {
        
        // Set the loop to make a value for the counter one higher than the previous value if that value was less than 14
        if counter < 14 {
            
            counter = counter + 1
        // if not, just set value of counter to 1
        } else {
            
            counter = 1
            
        }
        // Make a string that corresponds to the filename and set that to the image attribute of the image view
        pictureView.image = UIImage(named: "girl\(counter).gif")
        
    }

}

