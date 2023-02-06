//
//  AddRemoveView.swift
//  Pantry Portal
//
//  Created by Diego Rivera on 2/5/23.
//

import SwiftUI

struct AddRemoveView: View {
    
    @State private var nameOfIngredient: String = ""
    @State private var quantity: String = ""
    
    var body: some View {
        NavigationView{
        VStack {
            TextField("Enter Ingredient Name", text: $nameOfIngredient)
                .textFieldStyle(.roundedBorder)
            TextField("Quantity", text: $quantity)
                .textFieldStyle(.roundedBorder)
            
            Button("Enter"){
                guard let quantity = try? Int(quantity,format: .number) else { return }
            }
            
            Spacer()
                .navigationTitle("Add Ingredients")
            
        }.padding()
    }
    }
}

struct AddRemoveView_Previews: PreviewProvider {
    static var previews: some View {
        AddRemoveView()
    }
}
