//
//  HUDView.swift
//  iOSStarterKit
//
//  Created by xiongyongjie on 2018/12/10.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import Foundation
import UIKit


/// User interface theme
///
/// - white: white style
/// - dark: dark style
public enum MTSStatusIndicatorTheme {
    case white
    case dark
}

enum MTSHUDViewToastPosition {
    case center
    case bottom
    case top
    case custom
}

struct MTSStatusIndicatorConstant {
    static let defaultDismissTime = 2
    static let textFont = UIFont.systemFont(ofSize: 16)
    static let textColorLight = UIColor.white
    static let textColorDark = UIColor.black.withAlphaComponent(0.85)
    static let maxMessgeTextLines = 3
    static let cornerRadius = 10.0
}


open class MTSStatusIndicator: NSObject {
    
    public var theme: MTSStatusIndicatorTheme {
        get {
            return MTSStatusIndicatorTheme.white
        }
    }
    
    public static func showToast(toast: String) {
        
    }
    
    public static func hideToast() {

    }
    
    public static func showLoading() {
        
    }
    
    public static func hideLoading() {
        
    }
    
    public static func showSuccess(message:String = "") {
        
    }
    
    public static func showError(message: String = "") {
        
    }
    
    public static func showMessage(message: String,imageIcon: UIImage) {
        
    }

    public static func showProgress(){
        
    }
}

private class MTSHUDView: NSObject {
    
    var hudContentView: UIVisualEffectView
    
    var backgroundWindow: UIWindow?
    
    var textLabel: UILabel
    
    var imageView: UIImage
    
    var isShowing: Bool = false
    
    static let shared = MTSHUDView()
    
    let dismissTimer: Timer
    
    override init() {
        super.init()
        
    }
    
    
}
