//
//  Configuration.swift
//  iOSStarterKit
//
//  Created by xiongyongjie on 2018/11/23.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import Photos

public protocol MTSMediaPickerConfiguration {
    
    /**
     Max number of images user can select
     */
    var maxNumberOfSelections: Int { get set }
    
    /**
     Return how many cells per row you want to show for the given size classes
     */
    var cellsPerRow: (_ verticalSize: UIUserInterfaceSizeClass, _ horizontalSize: UIUserInterfaceSizeClass) -> Int { get set }
    
    
    
    
}
