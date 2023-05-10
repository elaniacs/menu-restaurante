//
//  LittleLemonMenuApp.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

@main
struct M4ExerciseApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            MainView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

