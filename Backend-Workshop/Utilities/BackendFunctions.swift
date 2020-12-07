//
//  BackendFunctions.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 02/12/20.
//

import Foundation
import UIKit

//func apiCode(url: String) {
//    
//    // 1 - pega o endereço da url
//    let urlString = "endereco de alguma api"
//    
//    // 2 - Cast esse endereço em um URL
//    let url = URL(string: urlString)
//    
//    // 3 - Unwrap o optional
//    guard let urlSafe = url else { return }
//    
//    // 4 - Cria uma session
//    let session = URLSession.shared
//    
//    // 5 - Cria a task
//    let dataTask = session.dataTask(with: urlSafe) { (data, response, error) in
//        
//        if error == nil && data != nil {
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            do {
//                let newsFeed = try decoder.decode("tipoDoDado".self, from: data!)
//            } catch {
//                print("Error in JSON Parsing")
//            }
//        }
//    }
//    
//    // 6 - Faz a chamada da api
//    dataTask.resume()
//}
