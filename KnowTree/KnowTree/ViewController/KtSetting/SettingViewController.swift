//
//  SettingViewController.swift
//  KnowTree
//
//  Created by Khai Leo on 4/2/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutPress(sender:UIButton){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate;
        appDelegate.gotoLogin();
    }

}
