//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var showMenuItemsOptions = false
    
    var body: some View {
        NavigationView {
            VStack {
                // code here
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
        MenuItemsView()
    }
}
