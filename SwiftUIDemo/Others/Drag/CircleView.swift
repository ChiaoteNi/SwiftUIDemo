//
//  CircleView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/17.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct CircleView : View {
    
    @State private var isOpen: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.green)
                .frame(width: 80, height: 80)
                .offset(x: 0, y: self.isOpen ? -80 : 0)
            Circle()
                .fill(Color.black)
                .frame(width: 80, height: 80)
                .offset(x: 0, y: self.isOpen ? 80 : 0)
            Circle()
                .fill(Color.red)
                .frame(width: 80, height: 80)
                .gesture(
                    TapGesture()
                        .onEnded({
                            withAnimation(.spring()) {
                                self.isOpen.toggle()
                            }
                        }))
        }
    }
}

#if DEBUG
struct CircleView_Previews : PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
#endif
