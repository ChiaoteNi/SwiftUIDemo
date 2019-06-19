//
//  ArrowView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/16.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct ArrowView : View {
    
    @State private var isDetectingTap: Bool = false
    
    var body: some View {
        let tap = TapGesture.init()
            .onEnded {
                self.isDetectingTap.toggle()
        }
        return GeometryReader { geometry in
            Path { path in
                path = self.isDetectingTap ? self.getArrowPath(with: geometry.size) : self.getHamburgerPath(with: geometry.size)
                }.stroke()
            }
            .gesture(tap)
            .frame(width: 150, height: 80, alignment: .center)
    }
    
    private func getArrowPath(with size: CGSize) -> Path {
        return Path { path in
            let width = size.width
            let height = size.height
            path.move(to: CGPoint(x: 0, y: height/2))
            path.addLine(to: CGPoint(x: width, y: height/2))
            path.addLine(to: CGPoint(x: width*0.75, y: 0))
            path.move(to: CGPoint(x: width, y: height/2))
            path.addLine(to: CGPoint(x: width * 0.75, y: height))
        }
    }
    
    private func getHamburgerPath(with size: CGSize) -> Path {
        let width = size.width
        let height = size.height
        return Path { path in
            path.move(to: .init(x: 0, y: 0))
            path.addLine(to: .init(x: width, y: 0))
            
            path.move(to: .init(x: 0, y: height/2))
            path.addLine(to: .init(x: width, y: height/2))
            
            path.move(to: .init(x: 0, y: height))
            path.addLine(to: .init(x: width, y: height))
        }
    }
}
