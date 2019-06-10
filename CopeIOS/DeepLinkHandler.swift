//
//  DeepLinkHandler.swift
//  CopeIOS
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//
import Foundation
import Core
import Login
import SignUp

class DeepLinkHandler: NSObject{
    
    private var processors: Set<AnyHashable>
    
    public override init() {
        processors = [LoginDeepLinkProcessor(), SignUpDeepLinkProcessor()]
        super.init()
    }
    
    public func getProcessor(of link: DeepLink) -> DeepLinkProcessor{
        return processors.first{ processor in
            (processor as! DeepLinkProcessor).isMine(deepLink: link)
            } as! DeepLinkProcessor
    }
}
