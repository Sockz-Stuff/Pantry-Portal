//
//  OrderRowView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem:OrderItem
    var body: some View {
        HStack(alignment:.firstTextBaseline){
            Text(orderItem.description)
                .font(.headline)
            Spacer()//pushes everything away from the clostest margin
            Text(orderItem.formattedExtendedPrice)
                .bold()
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem:testOrderItem)
            .environment(\.sizeCategory,.accessibilityExtraExtraExtraLarge)
    }
}
