//
//  ProgressDemoView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI
import Combine

struct ProgressDemoView : View {
    
    @ObjectBinding var data: ProgressViewData = .init()
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                CircleProgressView(data: self.data, rect: geometry.frame(in: .local))
            }
            Slider(value: $data.progress, from: 0, through: 1, by: 0.01)
                .padding(.vertical, 40)
            Slider(value: $data.startAngle, from: 0, through: 1, by: 0.01)
                .padding(.vertical, 40)
            Slider(value: $data.width, from: 0, through: 30, by: 1)
                .padding(.vertical, 40)
            Slider(value: $data.radius, from: 0, through: 100, by: 5)
                .padding(.vertical, 40)
        }
    }
}

class ProgressViewData: BindableObject {
    let didChange = PassthroughSubject<ProgressViewData, Never>()
    
    var progress: Double = 0.3 {
        didSet { changeHandler() }
    }
    var startAngle: Double = 0 {
        didSet { changeHandler() }
    }
    var width: Length = 10 {
        didSet { changeHandler() }
    }
    var radius: Length = 50 {
        didSet { changeHandler() }
    }
    var color: Color = .red {
        didSet { changeHandler() }
    }
    
    private func changeHandler() {
        didChange.send(self)
    }
}
