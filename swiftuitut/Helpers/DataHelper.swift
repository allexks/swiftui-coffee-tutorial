//
//  DataHelper.swift
//  swiftuitut
//
//  Created by Aleksandar Ignatov on 11.12.19.
//  Copyright © 2019 MentorMate. All rights reserved.
//

import Foundation

let drinkData: [Drink] = load("drinks.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("File \(filename) not in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Cannot load \(filename).\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Cannot parse \(filename) as \(T.self).\n\(error)")
    }
}
