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
    case dessert = "Dessert"
}

enum MenuSortingOptions: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case priceAscending = "A-Z"
}

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Selected Categories")) {
                        ForEach(SelectedCategories.allCases, id: \.self) { category in
                            Text(category.rawValue)
                        }
                    }
        
                    Section(header: Text("Sort by")) {
                        ForEach(MenuSortingOptions.allCases, id: \.self) { option in
                            Text(option.rawValue)
                        }
                    }
                }
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        self.presentationMode.wrappedValue.dismiss()
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
