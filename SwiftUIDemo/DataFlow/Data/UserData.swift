//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 aaronni. All rights reserved.
//

import SwiftUI
import Combine

class UserData: BindableObject {
    
    let didChange = PassthroughSubject<UserData, Never>()
    
    deinit {
        print("UserData release")
    }
    
    var userName: String = "" {
        didSet { didChange.send(self) }
    }
}

class Counter: BindableObject {
    let didChange = PassthroughSubject<Counter, Never>()
    
    deinit {
        print("Counter release")
    }
    
    var count: Int = 0 {
        didSet { didChange.send(self) }
    }
}
