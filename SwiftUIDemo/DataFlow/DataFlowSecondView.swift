//
//  DataFlowSecondView.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI

struct DataFlowSecondView : View {
    
    @ObjectBinding var data: UserData
    
    var body: some View {
        VStack {
            Text("ＨＩＨＩ)\(data.userName)")
            Button(action: {
                self.data.userName = "小強"
            }, label: {
                Text("改名")
            })
            NavigationButton(destination: DataFlowThirdView(data: self.data)) {
                Text("下一頁")
            }
            .navigationBarTitle(Text("第二頁"))
            }
    }
}

#if DEBUG
struct DataFlowSecondView_Previews : PreviewProvider {
    static var previews: some View {
        DataFlowSecondView(data: UserData())
    }
}
#endif
