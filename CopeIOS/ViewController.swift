//
//  ViewController.swift
//  CopeIOS
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit
import Core
import Login
import SignUp

class ViewController: UIViewController, DeepLinkHandler {

    private var processors: Set<AnyHashable> =  [LoginDeepLinkProcessor(), SignUpDeepLinkProcessor()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (UIApplication.shared.delegate as! AppDelegate).setDeepLinkHandler(handler: self)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            Application.shared.process(deepLink: "Login", with: self)
        }
       
    }
    
    func handleDeepLink(deepLink: DeepLink, with viewController:UIViewController){
        getProcessor(of: deepLink).process(from: viewController, with: deepLink)
    }
    
    private func getProcessor(of link: DeepLink) -> DeepLinkProcessor{
        return processors.first{ processor in
            (processor as! DeepLinkProcessor).isMine(deepLink: link)
            } as! DeepLinkProcessor
    }
}
