//
//  Drinks.swift
//  swiftuitut
//
//  Created by Aleksandar Ignatov on 11.12.19.
//  Copyright © 2019 MentorMate. All rights reserved.
//

import Foundation

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
