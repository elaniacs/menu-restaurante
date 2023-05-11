//
//  DisplayDish.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 10/05/23.
//

import SwiftUI


struct DisplayDish: View {
    @ObservedObject private var dish:Dish
    init(_ dish:Dish) {
        self.dish = dish
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(dish.name ?? "")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.leading)
                Spacer()
                Text(dish.formatPrice())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
            Text(dish.size ?? "")
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(.leading)
                .padding(.top, 5)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .contentShape(Rectangle())
    }
}

struct DisplayDish_Previews: PreviewProvider {
    static let context = PersistenceController.shared.container.viewContext
    let dish = Dish(context: context)
    static var previews: some View {
        DisplayDish(oneDish())
    }
    static func oneDish() -> Dish {
        let dish = Dish(context: context)
        dish.name = "Hummus"
        dish.price = 10
        dish.size = "Extra Large"
        return dish
    }
}
