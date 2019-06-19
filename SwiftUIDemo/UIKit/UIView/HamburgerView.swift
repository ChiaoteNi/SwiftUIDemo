//
//  Hamburger + SwiftUI.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/17.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct HamburgerView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> HamburgerUIView {
        return HamburgerUIView()
    }
    
    func updateUIView(_ uiView: HamburgerUIView, context: UIViewRepresentableContext<HamburgerView>) {
    }
}
