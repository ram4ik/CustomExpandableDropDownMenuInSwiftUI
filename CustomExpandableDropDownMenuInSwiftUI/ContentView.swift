//
//  ContentView.swift
//  CustomExpandableDropDownMenuInSwiftUI
//
//  Created by ramil on 30.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DropDown()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DropDown: View {
    @State var expand = false
    var body: some View {
        VStack(alignment: .leading, spacing: 18, content: {
            HStack {
                Text("Expand").fontWeight(.heavy).foregroundColor(.white)
                Image(systemName: expand ? "chevron.up" : "chevron.down")
                    .resizable()
                    .frame(width: 13, height: 6)
                    .foregroundColor(.white)
            }.onTapGesture {
                self.expand.toggle()
            }
            
            if expand {
                Button(action: {
                    print("1")
                    self.expand.toggle()
                }) {
                    Text("Select 1")
                }.foregroundColor(.white)
                Button(action: {
                    print("2")
                    self.expand.toggle()
                }) {
                    Text("Select 2")
                }.foregroundColor(.white)
                Button(action: {
                    print("3")
                    self.expand.toggle()
                }) {
                    Text("Select 3")
                }.foregroundColor(.white)
            }
        })
        .padding()
        .background(LinearGradient(gradient: .init(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}
