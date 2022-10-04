//
//  Films.swift
//  Alamofire-StarWarsOpedia
//
//  Created by Zehra on 5.10.2022.
//

import Foundation

struct Films: Decodable {
    let count: Int
    let all: [Film]
    
    enum CodingKeys: String, CodingKey {
        case count
        case all = "results"
    }
}
