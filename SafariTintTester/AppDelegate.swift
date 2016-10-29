//
//  AppDelegate.swift
//  SafariTintTester
//
//  Created by Amelia Boli on 10/29/16.
//  Copyright © 2016 Appogenic. All rights reserved.
//

import UIKit
import SafariServices

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // Here is the global setting that I want to override in the SafariViewController
        UIButton.appearance().tintColor = UIColor.green

        // These are attempts to override the tint set above. None seem to work.
        UIButton.appearance(whenContainedInInstancesOf: [SFSafariViewController.self]).tintColor = UIColor.white
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [SFSafariViewController.self]).tintColor = UIColor.white
        UINavigationBar.appearance(whenContainedInInstancesOf: [SFSafariViewController.self]).tintColor = UIColor.white

        return true
    }
}

