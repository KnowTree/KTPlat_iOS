//
//  ExtentionUViewController.swift
//  KnowTree
//
//  Created by Toan Tran on 4/2/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit

extension UIViewController{
    static var className: String {
        return NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
    }
}
