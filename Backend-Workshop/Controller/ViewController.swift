//
//  ViewController.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 02/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
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
            
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                do {
                    let allPeople = try decoder.decode(allPeopleStarWars.self, from: data!)
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
