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
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.leading)
                Spacer()
                Text(dish.formatPrice())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
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
