//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import Foundation


class MenuViewViewModel: ObservableObject {
    
    lazy var foodMenuItems : [MenuItem] = (1...12).map { index in
        MenuItem(title: "Food \(index)", priceDouble: Double.random(in: 5.0...15.0), menuCategory: .food, ordersCount: Int.random(in: 1...4),  priceInt: Int.random(in: 4...16), ingredients: mockListIngredients())
    }

    lazy var drinksMenuItems : [MenuItem] = (1...8).map { index in
        MenuItem(title: "Drink \(index)", priceDouble: Double.random(in: 5.0...15.0), menuCategory: .drink, ordersCount: Int.random(in: 1...4),  priceInt: Int.random(in: 4...16), ingredients: mockListIngredients())
    }

     lazy var dessertsMenuItems : [MenuItem] = (1...4).map { index in
        MenuItem(title: "Dessert \(index)", priceDouble: Double.random(in: 5.0...15.0), menuCategory: .dessert, ordersCount: 0,  priceInt: Int.random(in: 4...16), ingredients: mockListIngredients())
    }
    
    func mockListIngredients() -> [Ingredient] {
        let random = Int.random(in: 1...4)
        var arrayIngredients = [Ingredient]()
        for _ in 1...random {
            arrayIngredients.append(Ingredient.allCases.randomElement()!)
        }
        return arrayIngredients
    }
}
