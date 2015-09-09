//
//  ViewController.swift
//  make 10
//
//  Created by Naoki Toyosato on 2015/09/09.
//  Copyright © 2015年 Naoki Toyosato. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var shuffle: UIButton!
    @IBOutlet var button1 : UIButton!
    @IBOutlet var button2 : UIButton!
    @IBOutlet weak var ifYouAreRight: UILabel!
    @IBOutlet var button3 : UIButton!
    @IBOutlet var button4 : UIButton!
    var randomnum : UInt32 = 0
    var num1 : UInt32 = 0
    var num2 : UInt32 = 0
    var num3 : UInt32 = 0
    var num4 : UInt32 = 0

    
    
    @IBAction func shuffle(sender: AnyObject) {
        randomnum = arc4random() % 10
        num1 = arc4random() % 10
        num2 = arc4random() % 10
        num3 = arc4random() % 10
        num4 = arc4random() % 10
        
        givenNumber1st.text = "\(randomnum)"
        button1.setTitle("\(num1)", forState: UIControlState.Normal)
        button2.setTitle("\(num2)", forState: UIControlState.Normal)
        button3.setTitle("\(num3)", forState: UIControlState.Normal)
        button4.setTitle("\(num4)", forState: UIControlState.Normal)

        
    }
    @IBOutlet weak var givenNumber1st: UILabel!
    @IBOutlet weak var givenNumber2nd: UILabel!
    @IBOutlet weak var operation: UILabel!
    @IBAction func couldBeAnswer1(sender: UIButton) {
        if randomnum + num1 == 10 {
            ifYouAreRight.text = "！正解！"
        } else {
            ifYouAreRight.text = "不正解"
        }
        
    }
    @IBAction func couldBeAnswer2(sender: UIButton) {
        if randomnum + num2 == 10 {
            ifYouAreRight.text = "！正解！"
        } else {
            ifYouAreRight.text = "不正解"
        }

    }
    @IBAction func couldBeAnswer3(sender: UIButton) {
        if randomnum + num3 == 10 {
            ifYouAreRight.text = "！正解！"
        } else {
            ifYouAreRight.text = "不正解"
        }

    }
    @IBAction func couldBeAnswer4(sender: UIButton) {
        if randomnum + num4 == 10 {
            ifYouAreRight.text = "！正解！"
        } else {
            ifYouAreRight.text = "不正解"
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomnum = arc4random() % 10
        num1 = arc4random() % 10
        num2 = arc4random() % 10
        num3 = arc4random() % 10
        num4 = arc4random() % 10

        givenNumber1st.text = "\(randomnum)"
        button1.setTitle("\(num1)", forState: UIControlState.Normal)
        button2.setTitle("\(num2)", forState: UIControlState.Normal)
        button3.setTitle("\(num3)", forState: UIControlState.Normal)
        button4.setTitle("\(num4)", forState: UIControlState.Normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

