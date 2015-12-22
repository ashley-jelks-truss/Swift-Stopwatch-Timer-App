//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ashley Jelks on 12/9/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    
    var timer = NSTimer()
    
    func startTimer() {
        
        
        time++
        timerLabel.text = "\(time)"
        
            }
    
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func startTimer(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("startTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
    }
    
    @IBAction func pauseTimer(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        
        var timer = NSTimer()
        
        NSTimer is a class that creates timer objects, or timers
        More on this here: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSTimer_Class/
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        The parameters on this timer method are:
        1. Time Interval--how much time should pass until the timer changes (set to 1 second intervals).
        2. Target--The object this timer object will be working in, which is the ViewController, so we set the target to self. Self is often used to refer to the ViewController, more on this later...
        3. Selector--The method/function that should run when the timer hits 1 second. Here the func result() runs at 1 second intervals.
        4. UserInfo--Here there is the option to add user info. Here it is set to nil since it's not being used.
        5. Repeats--Boolean value that should be set to true or false. Here the timer does repeat every second, so it is set to true.
        */
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }




}