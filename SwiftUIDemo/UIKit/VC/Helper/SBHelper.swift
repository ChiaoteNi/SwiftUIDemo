//
//  SBHelper.swift
//  aaron
//
//  Created by admin on 2018/11/17.
//  Copyright © 2018年 aaron. All rights reserved.
//

import Foundation
import UIKit

class SBHelper {
    static func instantiate(vc: StoryBoardID, from sb: StoryboardName) -> UIViewController? {
        let vc = instanceVCfromSB(storyBoardName: sb.id, viewControllerID: vc.id)
        return vc
    }
    
    private static func instanceVCfromSB(storyBoardName: String, viewControllerID: String) -> UIViewController? {
        let sb = UIStoryboard(name: storyBoardName, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: viewControllerID)
        return vc
    }
}

enum StoryboardName: String {
    case main = "Main"
    case demo = "DemoVC"
    
    var id: String { return rawValue }
}

enum StoryBoardID: String {
    case demo = "PropertyDemoVC"
    var id: String { return rawValue }
}
