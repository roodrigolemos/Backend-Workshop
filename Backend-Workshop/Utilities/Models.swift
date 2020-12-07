//
//  Models.swift
//  Backend-Workshop
//
//  Created by Victor Vidal on 03/12/20.
//

import Foundation
struct starWarsCharacter: Codable {
    let name: String?
    let birthYear: String?
    let eyeColor: String?
    let hairColor: String?
    let height: String?
    let skinColor: String?
    let homeworld: String?
}
struct StartWarsSearch: Codable {
    let count: Int?
    let results: [starWarsCharacter]
}

struct allPeopleStarWars: Codable {
    let count: Int?
    let results: [starWarsCharacter]
}
