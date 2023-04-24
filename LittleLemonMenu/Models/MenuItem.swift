//
//  MenuItem.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var priceDouble: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var priceInt: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Identifiable, MenuItemProtocol {
    var id: UUID = UUID()
    
    var title: String
    
    var priceDouble: Double
    
    var menuCategory: MenuCategory
    
    var ordersCount: Int
    
    var priceInt: Int
    
    var ingredients: [Ingredient]
    
    func priceDoubleFormatter() -> String {
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        let formattedNumber = formatter.string(from: NSNumber(value: priceDouble)) ?? ""
        
        return formattedNumber
    }
}

