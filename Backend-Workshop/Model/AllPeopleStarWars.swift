//
//  AllPeopleStarWars.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 09/12/20.
//

import Foundation

// // 1.5 - Depois que ver a documentação da API, cria o model de acordo com os dados do JSON que você quer pegar.
struct AllPeopleStarWars: Codable {
    let count: Int?
    let results: [StarWarsCharacter]
}
