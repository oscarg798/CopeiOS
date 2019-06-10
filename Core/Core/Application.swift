//
//  Application.swift
//  Core
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit

public class Application {
    
    public static let shared = Application()
    
    private var handler: DeepLinkHandler?
    
    private init(){
        
    }
    
    public func setHandler(deepLinkHandler: DeepLinkHandler){
        self.handler = deepLinkHandler
    }
    
    public func process(deepLink: DeepLink, with viewController: UIViewController){
        handler?.handleDeepLink(deepLink: deepLink, with: viewController)
    }
}
