//
//  BasePresenter.swift
//  Core
//
//  Created by oscar gallon on 6/10/19.
//  Copyright © 2019 oscar gallon. All rights reserved.
//

import Foundation

public protocol BasePresenter {
    
    associatedtype View = BaseView
    
    var view: View? {get set}
    
    func bind(view:View)
    
    func unBind()
}

public extension BasePresenter {
    
    mutating func bind(_view: View){
        self.view = view
    }
    
    mutating func unBind(){
        view = nil
    }
}
