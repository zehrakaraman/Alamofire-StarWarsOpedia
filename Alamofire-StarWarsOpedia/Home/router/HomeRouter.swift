//
//  HomeRouter.swift
//  Alamofire-StarWarsOpedia
//
//  Created by Zehra on 4.10.2022.
//

import Foundation

class HomeRouter: PresenterToRouterHomeProtocol {
    
    static func createModule(ref: HomeViewController) {
        let presenter = HomePresenter()
        
        // authorization the view
        ref.presenterObject = presenter
        
        // authorization the presenter
        ref.presenterObject?.interactor = HomeInteractor()
        
        // authorization the interactor
        
    }
    
}
