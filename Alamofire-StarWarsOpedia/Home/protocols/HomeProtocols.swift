//
//  HomeProtocols.swift
//  Alamofire-StarWarsOpedia
//
//  Created by Zehra on 4.10.2022.
//

import Foundation

// Main protocols
protocol ViewToPresenterHomeProtocol {
    var interactor: PresenterToInteractorHomeProtocol? { get set }
    var view: PresenterToViewHomeProtocol? { get set }
    
    func loadFilms()
}

protocol PresenterToInteractorHomeProtocol {
    var presenter: InteractorToPresenterHomeProtocol? { get set }
    
    func loadData()
}

// Carrier protocols
protocol InteractorToPresenterHomeProtocol {
    func sendDataToPresenter(films: [String])
}

protocol PresenterToViewHomeProtocol {
    func sendDataToView(films: [String])
}

// Router protocol
protocol PresenterToRouterHomeProtocol {
    static func createModule(ref: HomeViewController)
}
