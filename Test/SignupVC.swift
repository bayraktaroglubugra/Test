//
//  SignupVC.swift
//  Test
//
//  Created by Emre Öner on 06/06/16.
//  Copyright © 2016 vm mac. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit
import FBSDKCoreKit


class SignupVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnFB(sender: AnyObject) {
        let manager = FBSDKLoginManager()
        manager.logInWithReadPermissions(["email"], fromViewController: self, handler: {
            result, error in
            
            if error != nil {
                print("problem var \(error)")
            } else {
                let fbresult : FBSDKLoginManagerLoginResult = result
                if (fbresult.grantedPermissions.contains("email")) {
                    print("tamamdır \(result)")
                }
            }
        })
    }

    @IBAction func btnTW(sender: AnyObject) {
    }
    @IBAction func btnGG(sender: AnyObject) {
    }
    @IBAction func btnEmail(sender: AnyObject) {
        
    }
    @IBAction func btnSignup(sender: AnyObject) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
