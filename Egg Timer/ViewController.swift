//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ashley Jelks on 12/9/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 55
//    
//    func result() {
//        
//        time++
//
//        if time == 1 {
//        print((time), "second passed")
//    }
//            
//        else {
//            print((time), "seconds passed")
//    }
//}
    
    var timer = NSTimer()
    
    func startTimer() {
        
        if time <= 9 {
        
        time++
        
        timerLabel.text = ("00:0" + String(time))
        
        }
        
        if time > 9 {
            
            time++
            
            timerLabel.text = ("00:" + String(time))
            
        }
        
        if time > 59 {
            
            let minuteCalculator:String = "1:0"
            
            time = 0
            
            time++
            
            timerLabel.text = (minuteCalculator + String(time))
            
            if time  > 59 {
                
                time = 0
                
                time++
                
                let convertDigit: Character = minuteCalculator[minuteCalculator.startIndex]
                
                let convertedCharToString: String = String(convertDigit)
                
                var convertedStringtoInteger = Int(convertedCharToString)!
                
                timerLabel.text = "\(convertedStringtoInteger)" + ":" + "\(time)"
                
                convertedStringtoInteger++
                
            }
        }
        
        
    }
    
   
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func startTimer(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("startTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
    }
    
    @IBAction func pauseTimer(sender: AnyObject) {
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