//
//  UIviewController+MTSMediaPicker.swift
//  iOSStarterKit
//
//  Created by xiongyongjie on 2018/11/23.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import Foundation
import Photos

public extension UIViewController {
    
    func mts_presentMTSMediaPicker(maxNumForSelection: Int = Int.max, completeHandler:((_ selectedAssets:[PHAsset])-> ())?) {
      
        MTSMediaPicker.authorize(fromViewController: self) {[weak self] (authorized) in
            guard authorized == true else {return}
            
            let pickerVC = MTSMediaPicker()
            pickerVC.maxNumForSelection = maxNumForSelection
            pickerVC.completionHandler = completeHandler
            let nav = UINavigationController(rootViewController: pickerVC)
            
            self?.present(nav, animated: true, completion: nil)
        }
    }
}
