//
//  Utils.swift
//  KnowTree
//
//  Created by Toan Tran on 5/22/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit

class Utils: NSObject {
    static func getViewController(className: String, storyboard:String)-> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier:className)
        return controller;
    }
}
