//
//  BackendFunctions.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 02/12/20.
//

import Foundation
import UIKit

struct WebsiteDescription: Decodable {
    let name: String
    let description: String
    let courses: [Course]
}

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    
//    init(json: [String: Any]) {
//        id = json["id"] as? Int ?? -1
//        name = json["name"] as? String ?? ""
//        link = json["link"] as? String ?? ""
//        imageUrl = json["imageUrl"] as? String ?? ""
//    }
}

let validDictionary = [
    "numericalValue": 1,
    "stringValue": "JSON",
    "arrayValue": [0, 1, 2, 3, 4, 5]
] as [String : Any]
 
let invalidDictionary = [
    "date": NSDate()
]
 

