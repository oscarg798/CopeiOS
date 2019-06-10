//
//  LoginViewController.swift
//  Login
//

//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import UIKit
import Core

class LoginViewController: UIViewController {

    @IBOutlet weak var lblSignUp: UILabel!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.lblSignUpTapListener))
        lblSignUp?.isUserInteractionEnabled = true
        lblSignUp?.addGestureRecognizer(tap)
    }

    @objc
    func lblSignUpTapListener(sender: UITapGestureRecognizer){
        Application.shared.process(deepLink: "SignUp", with: self)
    }
}
