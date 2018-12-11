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
    static let imageIconSize = CGSize.init(width: 40, height: 40)
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

private class MTSHUDView: UIView {
    
    var hudContentView: UIVisualEffectView!
    
    var backgroundWindow: UIWindow?
    
    var textLabel: UILabel!
    
    var imageView: UIImageView!
    
    var loadingActivityView: UIActivityIndicatorView!
    
    var isShowing: Bool = false
    
    static let shared = MTSHUDView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        hudContentView = UIVisualEffectView.init(effect: UIBlurEffect.init(style: .dark))
        
        imageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width:MTSStatusIndicatorConstant.imageIconSize.width , height: MTSStatusIndicatorConstant.imageIconSize.width))
        
        loadingActivityView = UIActivityIndicatorView.init(style: .whiteLarge)
        
        loadingActivityView.color = MTSStatusIndicatorConstant.textColorLight
        
        loadingActivityView.frame =  CGRect.init(x: 0, y: 0, width:MTSStatusIndicatorConstant.imageIconSize.width , height: MTSStatusIndicatorConstant.imageIconSize.width)
        
        textLabel = UILabel.init()
        
        
    }
    
    
}
