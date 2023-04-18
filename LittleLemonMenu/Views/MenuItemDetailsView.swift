//
//  MenuItemDetailsView.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 17/04/23.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image("LLLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .padding()
            
            Text("Price:").bold()
            Text(item.priceDoubleFormatter())
                .padding(.bottom)
            
            Text("Ordered:").bold()
            Text("\(item.ordersCount)")
                .padding(.bottom)
            
            VStack {
                Text("Ingredients:").bold()
                Text(item.ingredients.map { $0.rawValue }.joined(separator: "\n"))
               
            }
            Spacer()
        }
        .navigationBarTitle(Text(item.title))
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: MenuItem(title: "Previews", priceDouble: 0.0, menuCategory: .food, ordersCount: 1, priceInt: 0, ingredients: [.a, .b]))
    }
}
