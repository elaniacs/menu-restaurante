//
//  Location+CoreDataProperties.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 10/05/23.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var city: String?
    @NSManaged public var neighborhood: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var toCustomer: NSSet?
    @NSManaged public var toDessert: NSSet?
    @NSManaged public var toDish: NSSet?

}

extension Location : Identifiable {

}
