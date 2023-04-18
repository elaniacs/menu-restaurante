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
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        Section(header: Text("Food").textCase(nil)) {
                            ForEach(menuView.foodMenuItems) { item in
                                VStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    Text(item.title)
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                        .padding(.top, 10)
                                }
                                
                            }
                        }
                        
                        Section(header: Text("Drink")) {
                            ForEach(menuView.drinksMenuItems) { item in
                                VStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    Text(item.title)
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                        .padding(.top, 10)
                                }
                                
                            }
                        }
                        
                        Section(header: Text("Dessert")) {
                            ForEach(menuView.dessertsMenuItems) { item in
                                VStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    Text(item.title)
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                        .padding(.top, 10)
                                }
                                
                            }
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
