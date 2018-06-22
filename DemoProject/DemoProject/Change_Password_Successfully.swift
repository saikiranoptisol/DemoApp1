//
//  Change_Password_Successfully.swift
//  DemoProject
//
//  Created by Mac-OBS-07 on 21/06/18.
//  Copyright © 2018 Mac-OBS-07. All rights reserved.
//

import UIKit

class Change_Password_Successfully: UIViewController {

    @IBOutlet weak var viewToMask: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        viewToMask.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false, completion: nil)
        }
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
