//
//  WorldHistoryView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct WorldHistoryView: View {
    @State var imageID:Int = 0
    var body: some View {
        VStack {
            //ContentHeaderView()
            PageTitleView(title:"Pizza History")
            SelectedImageView(image:"\(imageID)_250w")
                .padding(5)
            HistoryRowView(imageID:$imageID)
        }
    }
}

struct WorldHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WorldHistoryView()
        }
    }
}
