//
//  AllPeopleStarWars.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 09/12/20.
//

import Foundation

struct AllPeopleStarWars: Codable {
    let count: Int?
    let results: [StarWarsCharacter]
}
