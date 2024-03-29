//
//  HamburgerView.swift
//  UIBezierPathDemo
//
//  Created by Chiao-Te Ni on 2018/7/24.
//  Copyright © 2018年 aaron. All rights reserved.
//

import Foundation
import UIKit

class HamburgerUIView: UIView {
    
    private var shapeLayer: CAShapeLayer = CAShapeLayer()
    
    var isOn: Bool = false {
        didSet { changePath(isOn: isOn) }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        shapeLayer.frame = rect
        shapeLayer.path = isOn ? getArrorPath().cgPath : getHamburgerPath().cgPath
    }
    
    private func setup() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        addGestureRecognizer(tap)
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        layer.addSublayer(shapeLayer)
    }
    
    private func changePath(isOn: Bool) {
        let animation = CABasicAnimation(keyPath: "path")
        animation.toValue = isOn ? getArrorPath().cgPath : getHamburgerPath().cgPath
        animation.duration = 0.4
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        animation.fillMode = CAMediaTimingFillMode.both
        animation.isRemovedOnCompletion = false
        
        shapeLayer.path = isOn ? getHamburgerPath().cgPath : getArrorPath().cgPath
        shapeLayer.add(animation, forKey: animation.keyPath)
    }
    
    private func getHamburgerPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: bounds.width, y: 0))
        
        path.move(to: CGPoint(x: 0, y: bounds.height / 2))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height / 2))
        
        path.move(to: CGPoint(x: 0, y: bounds.height))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        
        path.lineWidth = 3
        
        return path
    }
    
    private func getArrorPath() -> UIBezierPath {
        let path = UIBezierPath()
        let arrorPt = CGPoint(x: 0, y: bounds.height / 2)
        
        path.move(to: arrorPt)
        path.addLine(to: CGPoint(x: bounds.height / 2 * 1.3, y: 0))
        
        
        path.move(to: arrorPt)
        path.addLine(to: CGPoint(x: bounds.width, y: arrorPt.y))
        
        path.move(to: arrorPt)
        path.addLine(to: CGPoint(x: bounds.height / 2 * 1.3, y: bounds.height))
        
        path.lineWidth = 3
        
        return path
    }
    
    @objc private func tapHandler() {
        isOn = !isOn
    }
}
