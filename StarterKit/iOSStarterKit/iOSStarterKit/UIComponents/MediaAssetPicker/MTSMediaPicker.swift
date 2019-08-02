//
//  MTSMediaPicker.swift
//  iOSStarterKit
//
//  Created by xiongyongjie on 2018/11/23.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import UIKit
import Photos


class MTSMediaPicker: UITableViewController {
    
    var albums: [MTSAlbum] = []
    
    var maxNumForSelection: Int = Int.max
    
    var completionHandler: ((_ selectedAssets:[PHAsset]) -> ())?
    
    override func loadView() {
        
        if PHPhotoLibrary.authorizationStatus() == .authorized {
            initializeData()
        }
        
    }
    
    override func viewDidLoad() {
        
    }
    
    @objc class func authorize(_ status: PHAuthorizationStatus = PHPhotoLibrary.authorizationStatus(), fromViewController: UIViewController, completion: @escaping (_ authorized: Bool) -> Void) {
        switch status {
        case .authorized:
            // We are authorized. Run block
            completion(true)
        case .notDetermined:
            // Ask user for permission
            PHPhotoLibrary.requestAuthorization({ (status) -> Void in
                DispatchQueue.main.async(execute: { () -> Void in
                    self.authorize(status, fromViewController: fromViewController, completion: completion)
                })
            })
        default: ()
        DispatchQueue.main.async(execute: { () -> Void in
            completion(false)
        })
        }
    }
    
    private func initializeData() {
        
//        let smartAlbum = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .albumRegular, options: PHFetchOptions())
//        let userCollection = PHCollectionList.fetchTopLevelUserCollections(with: nil)
        
        
    }

    

}
