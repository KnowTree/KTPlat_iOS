//
//  DeviceUtils.swift
//  KnowTree
//
//  Created by Toan Tran on 2/19/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit
class DeviceUtils: NSObject {
    static func getScreenWidth() -> CGFloat{
        return UIScreen.main.bounds.size.width;
    }
    static func getScreenHeight() -> CGFloat{
        return UIScreen.main.bounds.size.height;
    }
}
