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
            List{ //item in is the clusre, here thats the Hstack
                Section(
                    header:ListHeaderView(orderModel: self.orderModel, text:"Your Order")
                
                ){
                    ForEach(orderModel.orders){item in
                        OrderRowView(orderItem:item)
                    }
                    .onDelete(perform:delete)
                }
            }
        }
    }
    func delete(at offsets:IndexSet){
        orderModel.orders.remove(atOffsets:offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}




//COMMAND CLICK IS OP
