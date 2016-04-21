//
//  {VIPER_MODULE_NAME}Presenter.swift
//  {PROJECT}
//
//  Created by {AUTHOR} on 18/04/16.
//  Copyright © 2016 {COMPANY}. All rights reserved.
//

import Foundation

class {VIPER_MODULE_NAME}Presenter: {VIPER_MODULE_NAME}PresenterProtocol {
    
    weak var view: {VIPER_MODULE_NAME}ViewProtocol!
    var interactor: {VIPER_MODULE_NAME}InteractorProtocol!
    var wireframe: {VIPER_MODULE_NAME}WireframeProtocol!

    //MARK: - BasePresenterProtocol
    
    var baseView: BaseViewProtocol! {
        return view
    }

    //MARK: - PresenterProtocol

}
