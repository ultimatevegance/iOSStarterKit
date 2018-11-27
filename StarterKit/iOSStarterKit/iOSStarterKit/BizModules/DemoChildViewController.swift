//
//  DemoChildViewController.swift
//  iOSStarterKit
//
//  Created by Justus Woolworth on 2018/9/13.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import UIKit

class DemoChildViewController: UIViewController,IndicatorInfoProvider {

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return "ChildVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.view.backgroundColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

