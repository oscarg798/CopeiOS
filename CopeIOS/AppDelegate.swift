//
//  AppDelegate.swift
//  CopeIOS
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit
import Core

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func setDeepLinkHandler(handler: DeepLinkHandler){
        Application.shared.setHandler(deepLinkHandler: handler)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
}
