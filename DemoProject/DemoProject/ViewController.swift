//
//  ViewController.swift
//  DemoProject
//
//  Created by Mac-OBS-07 on 18/06/18.
//  Copyright © 2018 Mac-OBS-07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   // @IBOutlet weak var sendMailBtn: UIButton!
    @IBOutlet weak var ViewforMask: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       // sendMailBtn.layer.cornerRadius = sendMailBtn.frame.size.height/2
        //sendMailBtn.clipsToBounds = true
        ViewforMask.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

