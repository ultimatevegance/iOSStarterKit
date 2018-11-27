//
//  ViewController.swift
//  iOSStarterKit
//
//  Created by xiongyongjie on 2018/8/20.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import UIKit
import Hero
import SwifterSwift

class ViewController: TabSwitcherVC  {

    override func viewDidLoad() {
        let bar = ButtonBarView.init(frame: CGRect(x: 0, y: 0, width: SwifterSwift.screenWidth, height:44), collectionViewLayout: UICollectionViewFlowLayout.init())
        bar.backgroundColor = .clear
        navigationItem.titleView = bar
        self.buttonBarView = bar
        configTabStyle() // config Before super.viewDidLoad()
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    private func configTabStyle() {
        settings.style.selectedBarBackgroundColor = AppColor.appThemeColor
        settings.style.selectedBarHeight = 3.5
        settings.style.selectedBarStyle = .fixedWidth
        settings.style.selectedBarWidth = 35
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarMinimumLineSpacing = 20
        changeCurrentIndexProgressive = {  (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            print(progressPercentage)
            oldCell?.label.textColor = UIColor(hexString: "666666")

            newCell?.label.textColor = AppColor.appThemeColor
        }
    }

    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return [DemoChildViewController.init(),DemoChild2ViewController.init(),DemoChildViewController.init(),DemoChild2ViewController.init()]
    }
    
}

