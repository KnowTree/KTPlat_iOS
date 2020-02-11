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

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        gotoLogin();
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
    func gotoMainTab() -> Void {
        let mainTabbar:TabBarController;
        
        mainTabbar = Utils.shared.getViewController(className: TabBarController.className, storyboard: KTConstants.mainSB) as! TabBarController;
        
        let settingVC = Utils.shared.getViewController(className: SettingViewController.className, storyboard: KTConstants.mainSB);
        let navSetting = UINavigationController.init(rootViewController: settingVC);
        
        let minMapVC = Utils.shared.getViewController(className: KtMindMapViewController.className, storyboard: KTConstants.mainSB);
        let navMinMap = UINavigationController.init(rootViewController: minMapVC);
        
        let listGroupVC = Utils.shared.getViewController(className: ListGroupViewController.className, storyboard: KTConstants.mainSB);
        let navGroup = UINavigationController.init(rootViewController: listGroupVC)
        mainTabbar.viewControllers = [navGroup, navMinMap, navSetting];
        
        self.window?.rootViewController = mainTabbar;
    }
    func gotoLogin() -> Void {
        let loginVC = Utils.shared.getViewController(className: LoginViewController.className, storyboard:KTConstants.AuthenticationSB);
        let navigation = UINavigationController.init(rootViewController: loginVC);
        self.window?.rootViewController = navigation;
    }


}

