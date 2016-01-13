//
//  ViewController.swift
//  iOS9WidgtUsage
//
//  Created by dosion on 15/12/9.
//  Copyright © 2015年 com.dosion.HTY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var but: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.redColor()
        let rect = CGRectMake(0, 0, 50, 25);
        but = UIButton(frame: rect)
        but!.setTitle("Tap", forState: .Normal)
        but!.addTarget(self, action: "handler", forControlEvents: .TouchUpInside)
        but!.center = view.center
        view.addSubview(but!)
        
        let bnt = CustomUIButton()
        bnt.setTitle("next", forState: .Normal)
        bnt.backgroundColor = UIColor.whiteColor()
        view.addSubview(bnt)
    }
    
    func handler(){
        let alert = UIAlertController(title: "Warning", message: "Hello world", preferredStyle: .ActionSheet)
        let action = UIAlertAction(title: "first", style: .Default) { (UIAlertAction) -> Void in
            print("Hello world")
        }
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

