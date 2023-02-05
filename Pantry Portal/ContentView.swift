//
//  ContentView.swift
//  Pantry Portal
//
//  Created by Marshall Jones on 2/5/23.
//

//CMD+OPT+Return Toggle Preview


//all objects in swiftUI are

//if then else:: evaluate ? evaluateTrue_ : evaluateFalse_
    //

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
                .layoutPriority(1)
            
            PageTitleView(title: "Order Pizza")
                //.layoutPriority(1)
            //
            MenuListView()
                .layoutPriority(1)
            
            OrderListView()
                .layoutPriority(1)
            
            //Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            //hover over a attribute, OPT+click with mouse
            //hover over a stack, CMD click
        }
    }
}
