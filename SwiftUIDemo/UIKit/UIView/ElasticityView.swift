//
//  ElasticityView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/17.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct ElasticityView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> ElasticityUIView {
        return ElasticityUIView()
    }

    func updateUIView(_ uiView: ElasticityUIView, context: UIViewRepresentableContext<ElasticityView>) {
        //...
    }
}

#if DEBUG
struct ElasticityView_Previews : PreviewProvider {
    static var previews: some View {
        ElasticityView()
    }
}
#endif
