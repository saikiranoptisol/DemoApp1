//
//  Forgot_Password_Success.swift
//  DemoProject
//
//  Created by Mac-OBS-07 on 21/06/18.
//  Copyright © 2018 Mac-OBS-07. All rights reserved.
//

import UIKit

class Forgot_Password_Success: UIViewController {
    
 @IBOutlet weak var ViewforMask: UIView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
             ViewforMask.layer.masksToBounds = true
            // Do any additional setup after loading the view.
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.view?.backgroundColor = UIColor(white: 0.2, alpha: 0.80)
    }
    @IBAction func closeButton_tap(_ sender: Any) {
        self.dismissScreen()
    }
    @IBAction func okButton_Tap(_ sender: Any){
        self.dismissScreen()
    }
    func dismissScreen(){
        self.dismiss(animated: false, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
