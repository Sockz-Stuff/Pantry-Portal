//
//  WorldHistoryView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct WorldHistoryView: View {
    var body: some View {
        VStack{
            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "1_250w")
                .padding(5)
            HistoryRowView()
            Spacer()
        }
        
    }
}

struct WorldHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        WorldHistoryView()
    }
}
