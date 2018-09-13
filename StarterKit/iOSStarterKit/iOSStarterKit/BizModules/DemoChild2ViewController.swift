//
//  DemoChild2ViewController.swift
//  iOSStarterKit
//
//  Created by Justus Woolworth on 2018/9/13.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import UIKit

class DemoChild2ViewController: UIViewController,IndicatorInfoProvider{

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return "ChildVC2"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.random()

        // Do any additional setup after loading the view.
    }

}
