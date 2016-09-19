//
//  ViewController.swift
//  StopWatch
//
//  Created by ios on 16/9/19.
//  Copyright © 2016年 com.czs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var timeLabel: UILabel!

    @IBOutlet weak var stopBarButtonItem: UIBarButtonItem!
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timeLabel.text = "0"
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTime), userInfo: nil, repeats: true)

    }
    
    
    @IBOutlet weak var play: UIBarButtonItem!
    
    func result() {
        
    }
    
    func increaseTime() {
        time = time + 1
        timeLabel.text = String(time)
    }
}

