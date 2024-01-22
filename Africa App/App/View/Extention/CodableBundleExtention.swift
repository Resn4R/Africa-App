//
//  CodableBundleExtention.swift
//  Africa App
//
//  Created by Vito Borghi on 21/01/2024.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //locate file
        guard let url = self.url(forResource: file, withExtension: nil) else { fatalError("Failed to locate \(file) in bundle.") }
        
        //create property for data
        guard let data = try? Data(contentsOf: url) else { fatalError("Failed to load \(file) from bundle.") }
        
        //create decoder
        let decoder = JSONDecoder()
        
        //create property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else { fatalError("Failed to decoded \(file) from bundle.") }
        
        //return ready data
        return loaded
    }
}
