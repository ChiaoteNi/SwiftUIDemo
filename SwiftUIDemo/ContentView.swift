//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
//        SwiftUIView()
        VStack {
            //MARK: - Data Flow
//            DataFlowDemo(data: UserData.init()).environmentObject(Counter.init())
            //MARK: - Gesture & Animation
//            GeometryReader { geometry in
//                DragDemoView(position: .init(x: geometry.size.width - 40, y: 0))
//            }

            //MARK: - Path
//            ArrowView()
//            ProgressDemoView()
//
            //MARK: - UIKit
            //VC
            VCPresentView()
            ///VCPresentView()
            // UIView
//            ElasticityView()
//                .frame(idealWidth: 100, maxWidth: 100,
//                       idealHeight: 50, maxHeight: 50,
//                       alignment: .center)
//            HamburgerView()
//                .frame(idealWidth: 100, maxWidth: 100,
//                       idealHeight: 50, maxHeight: 50,
//                       alignment: .center)
        }.padding(12)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
