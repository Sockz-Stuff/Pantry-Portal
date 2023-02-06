//
//  Ingredient.swift
//  Pantry Portal
//
//  Created by Diego Rivera on 2/5/23.
//

import Foundation
import CloudKit


struct Ingredient {  //class for ingredient type
     
    var recordId: CKRecord.ID?    //unique ID
    let nameOfIngredient: String
    let quantity: Int
    
    init(recordId: CKRecord.ID? = nil, nameOfIngredient: String, quantity: Int) {  //initialize
        self.recordId = recordId
        self.nameOfIngredient = nameOfIngredient
        self.quantity = quantity
    }
    func toDictionary() -> [String: Any] {
        return ["Ingredient": nameOfIngredient, "Quantity": quantity]
    }
    
}
