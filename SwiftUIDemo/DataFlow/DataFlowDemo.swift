//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct DataFlowDemo : View {
    
    @State private var isOpen: Bool = false
    @ObjectBinding var data: UserData
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        NavigationView {
            Text("\(counter.count)\(data.userName)")
            Button(action: {
                self.counter.count += 1
                self.isOpen.toggle()
            }, label: {
                Text(isOpen ? "變更值" : "bbbb")
            })
            NavigationButton(destination: DataFlowSecondView(data: data)) {
                Text("下一頁")
            }
            .navigationBarTitle(Text("第一頁"))
        }
    }
}
