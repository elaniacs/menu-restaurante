//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var showMenuItemsOptions = false
    @ObservedObject var menuView: MenuViewViewModel
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Food")) {
                        ForEach(menuView.foodMenuItems) { item in
                            Text(item.title)
                        }
                    }
                    
                    Section(header: Text("Drink")) {
                        ForEach(menuView.drinksMenuItems) { item in
                            Text(item.title)
                        }
                    }
                    
                    Section(header: Text("Dessert")) {
                        ForEach(menuView.drinksMenuItems) { item in
                            Text(item.title)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showMenuItemsOptions.toggle()
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $showMenuItemsOptions) {
                MenuItemsOptionView()
            }
        }
    }
}


struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView(menuView: MenuViewViewModel())
    }
}
