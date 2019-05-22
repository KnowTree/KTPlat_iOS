//
//  AppDelegate.swift
//  KnowTree
//
//  Created by Toan Tran on 2/15/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabBarController: UITabBarController?;
    var navigationController: UINavigationController?;

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        let arrVC : NSMutableArray = NSMutableArray.init();
        
        let minMapVC = DeviceUtils.getViewController(className: KtMindMapViewController.className, storyboard: "Main");
        let groupVC = DeviceUtils.getViewController(className: ListGroupViewController.className, storyboard: "Main");
        let settingVC = DeviceUtils.getViewController(className: SettingViewController.className, storyboard: "Main");
        
        arrVC.add(minMapVC);
        arrVC.add(groupVC);
        arrVC.add(settingVC);
        self.tabBarController = UITabBarController.init();
        self.tabBarController?.viewControllers = arrVC as? [UIViewController];
        self.navigationController = UINavigationController.init(rootViewController: self.tabBarController!);
        if (self.navigationController != nil) {
            self.navigationController?.navigationBar.isHidden = true;
            self.navigationController?.navigationBar.tintColor = UIColor.white;
            self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 0.169, green: 0.53, blue: 0.949, alpha: 1.0);
            self.navigationController?.navigationBar.isTranslucent = false;
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white];
            
            self.window?.rootViewController = self.navigationController;
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

