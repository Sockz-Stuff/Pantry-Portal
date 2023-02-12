//
//  RootTabView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/12/23.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
            WorldHistoryView()
                .tabItem{
                    Image(systemName: "book")
                    Text("History")
                    
                }
            
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView() .environmentObject(UserPreferences())
    }
}
