//
//  Change_Password.swift
//  DemoProject
//
//  Created by Mac-OBS-07 on 21/06/18.
//  Copyright © 2018 Mac-OBS-07. All rights reserved.
//

import UIKit

class Change_Password: UIViewController {

    @IBOutlet weak var viewToMask: UIView!
    
    @IBOutlet weak var save_btn: UIButton!
    @IBOutlet weak var back_btn: UIButton!
    @IBAction func backBtn(_ sender: Any) {
    }
    @IBOutlet weak var oldPassword_field: UITextField!
    @IBOutlet weak var newPassword_field: UITextField!
    @IBOutlet weak var confirmPassword_field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        viewToMask.layer.masksToBounds = true
        oldPassword_field.text = nil
        newPassword_field.text = nil
        confirmPassword_field.text = nil
    }
    func isPasswordValid(password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    func ShowAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func saveBtn(_ sender: Any) {
        if (oldPassword_field.text?.isEmpty)! && (newPassword_field.text?.isEmpty)! && (confirmPassword_field.text?.isEmpty)! {
        self.ShowAlert(title: "", message: "Please Enter Old Password")
        }
        else if !(oldPassword_field.text?.isEmpty)! && (newPassword_field.text?.isEmpty)! && (confirmPassword_field.text?.isEmpty)!{
            self.ShowAlert(title: "", message: "Please Enter New Password")
        }
        else if !(oldPassword_field.text?.isEmpty)! && !(newPassword_field.text?.isEmpty)! && (confirmPassword_field.text?.isEmpty)!{
            self.ShowAlert(title: "", message: "Please Enter confirm Password")
        }
        else if !(oldPassword_field.text?.isEmpty)! && !(newPassword_field.text?.isEmpty)! && !(confirmPassword_field.text?.isEmpty)!{
            if !isPasswordValid(password: newPassword_field.text!){
                self.ShowAlert(title: "", message: "Password must be between 6 and 20 characters, should contain one lower & upper Case letter, and one non_alpha character.")
            }
            else if !isPasswordValid(password: confirmPassword_field.text!){
                self.ShowAlert(title: "", message: "Password must be between 6 and 20 characters, should contain one lower & upper Case letter, and one non_alpha character.")
            }
        }
         if newPassword_field.text != confirmPassword_field.text {
            self.ShowAlert(title: "", message: "Password and confirm password do not match")
        }
        else if oldPassword_field.text != "Saikiran@123"{
         self.ShowAlert(title: "", message: "Old password is wrong!")
        }
        if oldPassword_field.text == "Saikiran@123" && newPassword_field.text == confirmPassword_field.text
            {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier:
                "Change_Password_Successfully") as? Change_Password_Successfully
            self.present(vc!, animated: false, completion: nil)
           
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
