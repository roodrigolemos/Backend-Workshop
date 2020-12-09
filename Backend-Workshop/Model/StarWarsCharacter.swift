//
//  StarWarsCharacter.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 09/12/20.
//

import Foundation

// 1.5 - Depois que ver a documentação da API, cria o model de acordo com os dados do JSON que você quer pegar.
struct StarWarsCharacter: Codable {
    let name: String?
    let birthYear: String?
    let eyeColor: String?
    let hairColor: String?
    let height: String?
    let skinColor: String?
    let homeworld: String?
}
