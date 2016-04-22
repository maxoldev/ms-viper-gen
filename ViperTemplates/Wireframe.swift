//
//  {VIPER_MODULE_NAME}Wireframe.swift
//  {PROJECT}
//
//  Created by {AUTHOR} on {DATE}.
//  Copyright © {YEAR} {COMPANY}. All rights reserved.
//

import Foundation
import UIKit

class {VIPER_MODULE_NAME}Wireframe: {VIPER_MODULE_NAME}WireframeProtocol {
    
//    weak var vc: UIViewController!
    
    static func open(fromVC parentVC: UIViewController) {
        let view = {VIPER_MODULE_NAME}View()
        let presenter = {VIPER_MODULE_NAME}Presenter()
        let interactor = {VIPER_MODULE_NAME}Interactor()
        let wireframe = {VIPER_MODULE_NAME}Wireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.wireframe = wireframe
        presenter.interactor = interactor
        interactor.presenter = presenter
//        wireframe.vc = view
        
//        parentVC.presentViewController(view, animated: true, completion: nil)
    }
    
    //MARK: - WireframeProtocol

}
