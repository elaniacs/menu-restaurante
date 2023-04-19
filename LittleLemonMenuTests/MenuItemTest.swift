//
//  MenuItemTest.swift
//  MenuItemTest
//
//  Created by Cáren Sousa on 17/04/23.
//

import XCTest
@testable import LittleLemonMenu

final class MenuItemTest: XCTestCase {
    
    func test_menuItemTitle() {
        let menuItem = MenuItem(title: "MenuTitleTest", priceDouble: 1.0, menuCategory: .food, ordersCount: 1, priceInt: 1, ingredients: [.a])
        XCTAssertEqual(menuItem.title, "MenuTitleTest")
        
    }
    
    func testMenuItemIngredients() {
        
        let menuItem = MenuItem(title: "MenuTitleTest", priceDouble: 1.0, menuCategory: .food, ordersCount: 1, priceInt: 1, ingredients: [.a])
        
        XCTAssertEqual(menuItem.ingredients, [.a])
    }
}

 





