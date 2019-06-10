//
//  LoginDeepLinkProcessor.swift
//  Login
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit
import Core

public class LoginDeepLinkProcessor: NSObject, DeepLinkProcessor{
   
    private let route: DeepLink = "Login"
    
    public func isMine(deepLink: DeepLink) -> Bool {
        return deepLink == route
    }
    
    public func process(from viewController: UIViewController, with deepLink: String) {
        viewController.present(LoginViewController(), animated: false, completion: nil)
    }
}
