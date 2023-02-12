//
//  OrderListView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct OrderListView: View {
    var orderModel:OrderModel
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, text:"Your Order")
            List(orderModel.orders){item in //item in is the clusre, here thats the Hstack
                OrderRowView(orderItem:item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}




//COMMAND CLICK IS OP
