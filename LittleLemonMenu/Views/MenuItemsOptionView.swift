//
//  MenuItemsOptionView.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    var menuCategories: [MenuCategory] = [.food, .drink, .dessert]
    var menuSortOptions = ["Most Popular", "Price $-$$$", "Dessert"]
    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Selected Categories")
                        .frame(maxWidth: .infinity, alignment: .leading))
                    {
                        ForEach(menuCategories, id: \.self) { category in
                            Text(category.rawValue)
                        }
                    }
        
                    Section(header: Text("Sort by")) {
                        ForEach(menuSortOptions, id: \.self) { option in
                            Text(option)
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
