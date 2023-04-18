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
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    Section(header:Text("Food")
                        .padding(.leading, -170)
                        .font(.title2)
                        .fontWeight(.medium)
                    )
                    {
                        ForEach(menuView.foodMenuItems) { item in
                            GridView(item: item)
                            
                        }
                    }
                    
                    Section(header: Text("Drink")
                        .padding(.leading, -170)
                        .font(.title2)
                        .fontWeight(.medium)
                    ) {
                        ForEach(menuView.drinksMenuItems) { item in
                            GridView(item: item)
                            
                        }
                    }
                    
                    Section(header: Text("Dessert")
                        .padding(.leading, -170)
                        .font(.title2)
                        .fontWeight(.medium)
                    ) {
                        ForEach(menuView.dessertsMenuItems) { item in
                            GridView(item: item)
                            
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

struct GridView: View {
    
    let item: MenuItem
    
    var body: some View {
        
        NavigationLink(destination: MenuItemDetailsView(item: item)) {
            VStack {
                Rectangle()
                    .fill(Color.blue)
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


struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView(menuView: MenuViewViewModel())
    }
}

