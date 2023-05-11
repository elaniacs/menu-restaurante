//
//  Dish+Extension.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 10/05/23.
//

import Foundation
import CoreData

extension Dish {

    static func createDishesFrom(menuItems: [MenuItem], _ context: NSManagedObjectContext) throws {
        for menuItem in menuItems {
            // Verificar se o prato já existe no banco de dados
            let request: NSFetchRequest<Dish> = Dish.fetchRequest()
            request.predicate = NSPredicate(format: "name = %@", menuItem.title)
            let dishes = try context.fetch(request)
            
            if dishes.isEmpty {
                // Criar um novo prato se ele não existir no banco de dados
                let dish = Dish(context: context)
                dish.name = menuItem.title
                dish.price = Float(menuItem.price.replacingOccurrences(of: ",", with: ".")) ?? 0.0
                dish.size = ""
            }
        }
        try context.save()
    }
    
    static func dishExists(with name: String, _ context: NSManagedObjectContext) throws -> Bool {
        let request: NSFetchRequest<Dish> = Dish.fetchRequest()
        request.predicate = NSPredicate(format: "name = %@", name)
        let count = try context.count(for: request)
        return count > 0
    }
    
}
