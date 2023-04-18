//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import Foundation


class MenuViewViewModel: ObservableObject {
    
    @Published var foodMenuItems : [MenuItem] = (1...12).map { index in
        MenuItem(title: "Food \(index)", priceDouble: Double.random(in: 5.0...15.0), menuCategory: .food, ordersCount: 0,  priceInt: Int.random(in: 4...16), ingredients: [Ingredient.allCases.randomElement()!])
    }

    @Published var drinksMenuItems : [MenuItem] = (1...8).map { index in
        MenuItem(title: "Drink \(index)", priceDouble: Double.random(in: 5.0...15.0), menuCategory: .drink, ordersCount: 0,  priceInt: Int.random(in: 4...16), ingredients: [Ingredient.allCases.randomElement()!])
    }

    @Published var dessertsMenuItems : [MenuItem] = (1...4).map { index in
        MenuItem(title: "Dessert \(index)", priceDouble: Double.random(in: 5.0...15.0), menuCategory: .dessert, ordersCount: 0,  priceInt: Int.random(in: 4...16), ingredients: [Ingredient.allCases.randomElement()!])
    }
}
