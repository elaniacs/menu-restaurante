//
//  MenuStruct.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 10/05/23.
//

import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
}


struct MenuItem: Codable, Identifiable {
    let id = UUID()
    let title: String
    let price: String
}

