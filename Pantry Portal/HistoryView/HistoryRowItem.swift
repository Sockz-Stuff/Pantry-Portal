//
//  HistoryRowItem.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct HistoryRowItem: View {
    var body: some View {
        HStack(alignment:.top) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
            Text("Huli Chicken")
                .font(.title)
            Spacer()
            
        }.overlay(

            Image(systemName: "chevron.right.square")
                .padding()
                .font(.title)
                .foregroundColor(Color("G3"))
            ,alignment:.trailing
            
        )
    }
}

struct HistoryRowItem_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowItem()
    }
}
