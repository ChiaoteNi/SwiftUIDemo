//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct SwiftUIView : View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .color(Color.red)
                .underline()
            
            Button(action: {
                print("hihi")
            }, label: {
                Text("按我")
            })
        }
    }
}

#if DEBUG
struct SwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
#endif
