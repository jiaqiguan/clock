//
//  ViewController.swift
//  alarm
//
//  Created by Guan Jiaqi on 3/2/15.
//  Copyright (c) 2015 Guan Jiaqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minutehand: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = NSDate()
        
        let calendar = NSCalendar.currentCalendar()
        
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        
        let hour = components.hour
        
        let minutes = components.minute
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"), userInfo: nil, repeats: true)

        
        time.text = " \(minutes) "
        var c = (CGFloat(minutes-15))/30.0*3.1415926
        var f = CGFloat(c)
        self.minutehand.layer.anchorPoint=CGPoint(x:0.0,y:0.5)
        var t = CGAffineTransformMakeRotation(f)
      
        
        self.minutehand.transform = t
        
        
    }
    @IBOutlet weak var time: UILabel!
    
    func update() {
        let date = NSDate()
        
        let calendar = NSCalendar.currentCalendar()
        
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        
        let hour = components.hour
        
        let minutes = components.minute
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        
        
        time.text = " \(minutes) "
        var c = (CGFloat(minutes-15))/30.0*3.1415926
        var f = CGFloat(c)
        self.minutehand.layer.anchorPoint=CGPoint(x:0.0,y:0.5)
        var t = CGAffineTransformMakeRotation(f)
        
        
        self.minutehand.transform = t
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

