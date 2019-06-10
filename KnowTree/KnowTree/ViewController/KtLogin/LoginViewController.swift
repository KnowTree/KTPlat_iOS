//
//  KtLoginViewController.swift
//  KnowTree
//
//  Created by Khai Leo on 4/2/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginPress(sender:UIButton){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate;
        appDelegate.gotoMainTab();
    }
    @IBAction func signUpPress(sender:UIButton){
        let signupVC = Utils.shared.getViewController(className: SignUpVC.className, storyboard:KTConstants.AuthenticationSB);
        self.navigationController?.pushViewController(signupVC, animated: true);
    }
}

