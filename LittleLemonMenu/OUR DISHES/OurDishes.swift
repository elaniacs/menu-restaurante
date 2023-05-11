//
//  OurDishes.swift
//  LittleLemonMenu
//
//  Created by Cáren Sousa on 10/05/23.
//

import SwiftUI
import CoreData

struct OurDishes: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @ObservedObject var dishesModel = DishesModel()
    @State private var showAlert = false
    @State var searchText = ""
    
    
    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.bottom, 10)
                .padding(.top, 50)
            
            Text ("Tap to order")
                .foregroundColor(.black)
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color("approvedYellow"))
                .cornerRadius(20)
            
            
            NavigationView {
                FetchedObjects(
                    predicate: buildPredicate(),
                    sortDescriptors: buildSortDescriptors()) {
                        (dishes: [Dish]) in
                        List {
                            ForEach(dishes) { dish in
                                DisplayDish(dish: dish)
                                    .onTapGesture {
                                        showAlert.toggle()
                                    }
                            }
                            
                        }
                        // add the search bar modifier here
                    }
            }
            
            .padding(.top, -10)//
            
            .alert("Order placed, thanks!",
                   isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
            
            // makes the list background invisible, default is gray
                   .scrollContentBackground(.hidden)
            
            // runs when the view appears
                   .task {
                       await dishesModel.reload(viewContext)
                   }
            
        }
    }
}

struct OurDishes_Previews: PreviewProvider {
    static var previews: some View {
        OurDishes()
    }
}

