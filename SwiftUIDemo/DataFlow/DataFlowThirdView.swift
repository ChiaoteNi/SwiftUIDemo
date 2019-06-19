//
//  DataFlowThirdView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct DataFlowThirdView : View {
    
    @ObjectBinding var data: UserData
    @EnvironmentObject var counter: Counter
    @State private var isRed: Bool = false
    
    var body: some View {
        return VStack {
            Text("\(data.userName) + \(counter.count), \(counter.count) ")
            Button(action: {
                self.data.userName = "小明"
                self.counter.count -= 1
                self.isRed.toggle()
            }, label: {
                Text("減一")
            })
            SubView(isRed: $isRed)
            .navigationBarTitle(Text("第三頁"))
        }
    }
}

struct SubView: View {
    @Binding var isRed: Bool
    
    var body: some View {
        Circle()
            .fill(isRed ? Color.red : Color.green)
            .frame(width: 100, height: 100, alignment: .center)
    }
}
