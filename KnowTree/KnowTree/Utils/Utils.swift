//
//  Utils.swift
//  KnowTree
//
//  Created by Toan Tran on 5/22/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit

class Utils: NSObject {
    static let shared = Utils();
    private override init(){};
    func getViewController(className: String, storyboard:String)-> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier:className)
        return controller;
    }
    static func getScreenWidth() -> CGFloat{
        return UIScreen.main.bounds.size.width;
    }
    static func getScreenHeight() -> CGFloat{
        return UIScreen.main.bounds.size.height;
    }
    //Color.
    func RGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}
