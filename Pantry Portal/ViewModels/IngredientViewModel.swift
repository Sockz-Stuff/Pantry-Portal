//
//  IngredientViewModel.swift
//  Pantry Portal
//
//  Created by Diego Rivera on 2/5/23.
//

import Foundation
import CloudKit

enum RecordType: String {
    case Ingredient = "Ingredient"
}

class IngredientViewModel : ObservableObject {
    
    private var database : CKDatabase
    private var container : CKContainer
    
    init(container: CKContainer){
        self.container = container
        self.database = self.container.publicCloudDatabase
    }
    
    //implementing the save function
    func saveItem(nameOfIngredient: String, quantity: Int){
        let record = CKRecord(recordType: RecordType.Ingredient.rawValue)
        let Ingredient = Ingredient(nameOfIngredient: nameOfIngredient, quantity: quantity)
        record.setValuesForKeys(Ingredient.toDictionary())
        
        //saving record in database
        self.database.save(record){ newRecord, error in
            if let error = error {
                print(error)
            }else{
                if let _ = newRecord{
                    print("SAVED")
                }
            }
        }
    }
}
