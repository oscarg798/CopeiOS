//
//  DeepLinkProcessor.swift
//  Core
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit

public protocol DeepLinkProcessor{
    
    func isMine(deepLink: String) -> Bool
    
    func process(from viewController: UIViewController, with deepLink: DeepLink)
}
