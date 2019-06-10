//
//  LoginContract.swift
//  Login
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import Foundation
import Core

protocol LoginView: BaseView {
    
    func onLoginSuccess()
    
    func onLoginError(error:String)
}

protocol Presenter: BasePresenter where View == LoginView {
    
    func onLoginButtonClicked(username: String, password:String)
}

