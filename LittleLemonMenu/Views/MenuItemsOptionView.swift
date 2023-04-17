//
//  MenuItemsOptionView.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

enum SelectedCategories: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case desert = "Desert"
}

enum MenuSortingOptions: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case priceAscending = "A-Z"
}

struct MenuItemsOptionView: View {
   
    var body: some View {
        VStack {
            List {
                Section(header: Text("Selected Categories")) {
                    ForEach(SelectedCategories.allCases, id: \.self) { category in
                        Text(category.rawValue)
                    }
                 
                }
                
                Section(header: Text("Menu Sorting Options")) {
                    ForEach(MenuSortingOptions.allCases, id: \.self) { option in
                        Text(option.rawValue)
                    }
                }
            }
        }

    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
