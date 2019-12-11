//
//  DrinkDetail.swift
//  swiftuitut
//
//  Created by Aleksandar Ignatov on 11.12.19.
//  Copyright © 2019 MentorMate. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80, alignment: .bottom)
                    .opacity(0.69)
                    .blur(radius: 10)
                    .foregroundColor(.black)
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            
            VStack {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }
                .padding(.top, 50)
            }
            .padding(.top)
            .padding(.bottom)
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Order Now!")
        }
        .frame(width: 200, height: 50)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[0])
    }
}
