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
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed:Bool = true
    var body: some View {
        VStack {
            //ContentHeaderView()
            //    .layoutPriority(1)
            
            
            Button(action:{self.isMenuDisplayed.toggle()}){
                PageTitleView(title: "Order Pizza", isDisplayingOrder: isMenuDisplayed)
                //.layoutPriority(1)
                //
            }
            
            //state for views
            //observedobjecs for value changes like the models
            
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
                //.environmentObject(UserPreferences())
            
            OrderListView(orderModel: orderModel) //no $ means read only
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
                //.environmentObject(UserPreferences())
            
            //Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
            //hover over a attribute, OPT+click with mouse
            //hover over a stack, CMD click
        }
    }
}
