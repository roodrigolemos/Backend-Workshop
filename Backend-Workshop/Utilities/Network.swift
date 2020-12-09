//
//  Network.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 09/12/20.
//

import Foundation

class Network {
    static let shared = Network()
    
    func getData() {
        // 1 - pega o endereço da url
        let urlString = "https://swapi.dev/api/people/"

        // 2 - Cast esse endereço em um URL
        let url = URL(string: urlString)

        // 3 - Unwrap o optional
        guard let urlSafe = url else { return }

        // 4 - Cria uma session
        let session = URLSession.shared

        // 5 - Cria a task
        let dataTask = session.dataTask(with: urlSafe) { (data, response, error) in
            
            // 5.1 - Verifica se existe algum dado e se não veio nenhum erro e depois faz deserialização do JSON
            if error == nil && data != nil {
                // 5.2 - cria uma instancia do JSONDecoder
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                // 5.3 - faz a deserialização do JSON para o seu model.
                do {
                    let allPeople = try decoder.decode(AllPeopleStarWars.self, from: data!)
                    let starWarsCharacters = allPeople.results
                    
                    
                    print("\n\n Existem \(starWarsCharacters.count) personagens \n\n")
                    for character in starWarsCharacters {
                        print("\(character) \n\n")
                    }
                    
                    for character in starWarsCharacters {
                        guard let name = character.name else { return }
                        if name == "Darth Vader" {
                            print("Vilão: \n \(character)")
                        }
                    }
                } catch {
                    print("Error in JSON Parsing")
                }
            }
        }
        // 6 - Faz a chamada da api
        dataTask.resume()
    }
}


