//
//  DemoTableViewCell.swift
//  iOSStarterKit
//
//  Created by xiongyongjie on 2018/11/27.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import UIKit

// 使用协议代理 解耦View 和VC的关系
protocol DemoTableViewCellTouchEvent: AnyObject {
    func CustomButtonDidClick()
}

class DemoTableViewCell: UITableViewCell {
    
    weak var delegate: DemoTableViewCellTouchEvent?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func didClick() {
        delegate?.CustomButtonDidClick()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
