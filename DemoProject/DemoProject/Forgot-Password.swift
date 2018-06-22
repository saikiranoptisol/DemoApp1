//
//  Forgot-Password.swift
//  DemoProject
//
//  Created by Mac-OBS-07 on 21/06/18.
//  Copyright © 2018 Mac-OBS-07. All rights reserved.
//

import UIKit

class Forgot_Password: UIViewController {

    @IBOutlet weak var sendMailbtn: UIButton!
    @IBOutlet weak var email_Field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        sendMailbtn.layer.cornerRadius = sendMailbtn.frame.size.height/2
        sendMailbtn.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        email_Field.layer.borderColor = UIColor.red.cgColor
    }
    
    func validateEmail(enteredEmail:String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
    }
    
    @IBAction func sendMail_Btn(_ sender: Any) {
        if !(email_Field.text?.isEmpty)! {
            if validateEmail(enteredEmail: email_Field.text!){
                if email_Field.text == "saikirannani10@gmail.com" {
                    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier:
                        "Forgot_Password_Success") as? Forgot_Password_Success
                    let exampleColor = UIColor.white
                    vc!.view.backgroundColor = exampleColor.withAlphaComponent(0.1)
                    vc!.modalPresentationStyle = .overCurrentContext
                    self.present(vc!, animated: false, completion: nil)
                }
                else {
                    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "Forgot_Password_Invalidmail") as? Forgot_Password_Invalidmail
                    let exampleColor = UIColor.white
                    vc!.view.backgroundColor = exampleColor.withAlphaComponent(0.1)
                    vc!.modalPresentationStyle = .overCurrentContext
                    self.present(vc!, animated: false, completion: nil)
                }
            }
            else{
                let alert = UIAlertController(title: "", message: "Please provide a valid Email", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        else{
            let alert = UIAlertController(title: "", message: "Please Enter UserName", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
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
