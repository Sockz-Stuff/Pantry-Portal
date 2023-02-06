//
//  Pantry_PortalApp.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

@main
struct Pantry_PortalApp: App {
    
    //public container - commented out bc currently doesnt work .. ignore this for now - diego
    //let container = CKContainer(identifier: "iCloud.com. ")
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //ContentView(vm: IngredientViewModel(container: containter))
        }
    }
}
