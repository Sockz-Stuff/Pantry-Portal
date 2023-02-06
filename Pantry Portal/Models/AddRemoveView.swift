//
//  AddRemoveView.swift
//  Pantry Portal
//
//  Created by Diego Rivera on 2/5/23.
//

import SwiftUI
import CloudKit

struct AddRemoveView: View {
    
   // @StateObject private var vm: IngredientViewModel
    @State private var nameOfIngredient: String = ""
    @State private var quantity: String = ""
    
     // init(vm: IngredientViewModel){
    //  _vm = StateObject(wrappedValue: vm)
   // }
   
    var body: some View {
        NavigationView{
        VStack {
            TextField("Enter Ingredient Name", text: $nameOfIngredient)
                .textFieldStyle(.roundedBorder)
            TextField("Quantity", text: $quantity)
                .textFieldStyle(.roundedBorder)
            
            Button("Enter"){
               // guard let quantity = try? Int(quantity,format: .number) else { return }
                
             //   vm.saveItem(nameOfIngredient: nameOfIngredient, quantity: quantity)
               
                self.nameOfIngredient = ""
                self.quantity = ""
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
       // AddRemoveView(vm: IngredientViewModel(container: CKContainer.default()))
    }
}
