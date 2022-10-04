//
//  HomeInteractor.swift
//  Alamofire-StarWarsOpedia
//
//  Created by Zehra on 4.10.2022.
//

import Foundation
import Alamofire

class HomeInteractor: PresenterToInteractorHomeProtocol {
    
    var presenter: InteractorToPresenterHomeProtocol?
    
    func loadData() {
        let request = AF.request("https://swapi.dev/api/films")
//        request.responseJSON { (data) in
//            print(data)
//        }
        request.responseDecodable(of: Films.self) { (response) in
            guard let films = response.value else { return }
            print(films.all[0].title)
        }
    }
    
}
