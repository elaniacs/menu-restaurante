//
//  ContentView.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MenuItemsView(menuView: MenuViewViewModel())
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
