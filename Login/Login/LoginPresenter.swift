//
//  LoginPresenter.swift
//  Login
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import Foundation

class LoginPresenter: Presenter {
  
    var view: LoginView?
    
    func bind(view: LoginView) {
        self.view = view
    }
    
    func unBind() {
        view = nil
    }
    
    func onLoginButtonClicked(username: String, password: String) {
        
    }
}
