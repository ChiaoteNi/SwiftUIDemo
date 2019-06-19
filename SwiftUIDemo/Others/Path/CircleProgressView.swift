//
//  CircleProgressView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI
import Combine

struct CircleProgressView : View {
    
    @ObjectBinding var data: ProgressViewData
    
    var rect: CGRect
    
    var body: some View {
        VStack {
            Path { path in
                let startAngle = Angle.init(degrees: data.startAngle * 360)
                path.addArc(
                    center: CGPoint(x: self.rect.midX, y: self.rect.midY),
                    radius: data.radius,
                    startAngle: startAngle,
                    endAngle: startAngle + Angle(degrees: data.progress * 360),
                    clockwise: false)
                }
                .stroke(style: StrokeStyle(lineWidth: data.width,
                                           lineCap: .round,
                                           lineJoin: .round))
                .fill(data.color)
        }.preferredColorScheme(.dark)
    }
}
