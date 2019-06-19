//
//  PanDemoView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/17.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct DragDemoView : View {
    
    @State var position: CGPoint
    @GestureState private var isOpen: Bool = false
    private let data: DragDemoData = .init()
    
    var body: some View {
        let drag = DragGesture(minimumDistance: 1, coordinateSpace: .global)
            .onChanged { value in
                self.onChanged(value: value)
            }
            .onEnded({ value in
                self.onEnd(value: value)
            })
        
        return CircleView()
            .gesture(drag)
            .position(position)
            .preferredColorScheme(.dark)
        .preferredColorScheme(.light)
    }
    
    private func onChanged(value: DragGesture.Value) {
        if let spec = data.spec {
            withAnimation {
                self.position = value.location + spec
            }
        } else {
            self.data.spec = self.position - value.location
        }
    }
    
    private func onEnd(value: DragGesture.Value) {
        self.data.spec = nil
    }
}

class DragDemoData {
    let diameter: Length = 100
    var spec: CGPoint?
}
