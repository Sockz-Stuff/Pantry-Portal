//
//  RatingsView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

import SwiftUI

struct RatingsView: View {
    var count:Int = 4
    var rating:[String]{
        let symbolName = "\(count).circle"
        return Array(repeating:symbolName, count:count)
    }
    var body: some View {
        HStack {
            ForEach(rating, id:\.self){item in
                Image(systemName: item)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count:5)
            
    }
}
