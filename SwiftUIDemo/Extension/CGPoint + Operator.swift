//
//  CGPoint + Operator.swift
//  SwiftUIDemo
//
//  Created by admin on 2019/6/17.
//  Copyright © 2019 aaronni. All rights reserved.
//

import CoreGraphics

func + (_ left: CGPoint, _ right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func - (_ left: CGPoint, _ right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func + (_ left: CGPoint, _ right: CGSize) -> CGPoint {
    return CGPoint(x: left.x + right.width, y: left.y + right.height)
}
