//
//  AnimalModel.swift
//  Africa App
//
//  Created by Vito Borghi on 22/01/2024.
//

import SwiftUI

let animals: [Animal] = Bundle.main.decode("animals.json")

struct Animal: Codable, Identifiable {
    let id: String
    
    let name: String
    let headline: String
    let description: String
    
    let link: String
    let image: String
    let gallery: [String]
    
    let fact: [String]
}
