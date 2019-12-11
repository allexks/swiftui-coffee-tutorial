//
//  HomeView.swift
//  swiftuitut
//
//  Created by Aleksandar Ignatov on 11.12.19.
//  Copyright © 2019 MentorMate. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        .init(grouping: drinkData) { $0.category.rawValue }
    }
    
    var body: some View {
        NavigationView {
            List (categories.keys.sorted(), id: \String.self) {
                DrinkRow(categoryName: "\($0) drinks".uppercased(),
                         drinks: self.categories[$0]!)
                    .frame(height: 300)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("Swift UI Coffee Project"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
