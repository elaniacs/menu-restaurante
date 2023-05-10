//
//  Dish+CoreDataClass.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 10/05/23.
//
//

import Foundation
import CoreData

@objc(Dish)
public class Dish: NSManagedObject {
    func formatPrice() -> String {
        let spacing = price < 10 ? " " : ""
        return "$ " + spacing + String(format: "%.2f", price)
    }
}
