//
//  AppDelegate.swift
//  Grouped-UITableView
//
//  Created by GabrielMassana on 08/11/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //MARK: - Accessors
    
    /// App Window
    var window: UIWindow? = {
        
        let window: UIWindow = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        window.backgroundColor = UIColor.whiteColor()
        
        return window
    }()

    /**
     The Navigation Controller working as rootViewController.
     */
    lazy var rootViewController: ViewController = {
        
        var rootViewController = ViewController()
                
        return rootViewController
    }()
    
    //MARK: - UIApplicationDelegate

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        window!.rootViewController = rootViewController
        window!.makeKeyAndVisible()
        
        return true
    }
}

