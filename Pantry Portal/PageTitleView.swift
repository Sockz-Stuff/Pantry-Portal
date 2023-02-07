//
//  PageTitleView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct PageTitleView: View {
    var title:String
    var isDisplayingOrder:Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)

        }.overlay(
            Image(systemName:isDisplayingOrder ?? false ? "chevron.up.square" : "chevron.down.square")
                .font(.title)
                .foregroundColor(isDisplayingOrder != nil ? Color("G1") : .clear)
            .padding()
            ,alignment: .leading
        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza")
    }
}
