//
//  HistoryRowView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct HistoryRowView: View {
    var historyModel = HistoryModel()
    @Binding var imageID:Int
    var body: some View {
        NavigationView{
            List(historyModel.historyItems) { item in
                NavigationLink(destination:
                    HistoryDetailView(historyItem: item, imageID: self.$imageID)
                ){
                    HistoryRowItem(historyItem:item)
                }
            }
        }
    }
}
//test

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(imageID:.constant(0))
    }
}


