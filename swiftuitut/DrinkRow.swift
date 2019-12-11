//
//  DrinkRow.swift
//  swiftuitut
//
//  Created by Aleksandar Ignatov on 11.12.19.
//  Copyright © 2019 MentorMate. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach (drinks) {
                        DrinkItem(drink: $0)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                    }
                }
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
