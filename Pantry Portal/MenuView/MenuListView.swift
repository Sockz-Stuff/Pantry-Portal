//
//  MenuListView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var orderModel:OrderModel
    var menuList = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(orderModel:orderModel, text:"Menu")
            NavigationView{
                List(menuList) { item in
                    NavigationLink(destination: MenuDetailView(orderModel:self.orderModel, menuItem:item)){ //$ means its binding
                        MenuRowView(menuItem:item)
                            .listRowInsets(EdgeInsets())
                    }
                }
                .navigationBarTitle("Pizza Order")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel:(OrderModel()))
    }
}




