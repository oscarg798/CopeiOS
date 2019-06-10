//
//  DeepLinkHandler.swift
//  Core
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit

public protocol DeepLinkHandler {
    
    func handleDeepLink(deepLink: DeepLink, with viewController:UIViewController)
}
