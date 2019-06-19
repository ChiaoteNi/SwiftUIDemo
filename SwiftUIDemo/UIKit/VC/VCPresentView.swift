//
//  VCPresentView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import UIKit
import SwiftUI

struct VCPresentView : UIViewControllerRepresentable {
    
    class MyCoordinator {
        let a = 1
    }
    
    func makeCoordinator() -> MyCoordinator {
        return MyCoordinator()
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<VCPresentView>) -> PropertyDemoVC {
        let vc = SBHelper.instantiate(vc: .demo, from: .demo) as? PropertyDemoVC
        return vc!
    }
    
    func updateUIViewController(_ uiViewController: PropertyDemoVC, context: UIViewControllerRepresentableContext<VCPresentView>) {
    }
}
