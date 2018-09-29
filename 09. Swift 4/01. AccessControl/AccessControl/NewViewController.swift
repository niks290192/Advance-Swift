//
//  NewViewController.swift
//  AccessControl
//
//  Created by NiKhil AroRa on 28/09/18.
//  Copyright © 2018 NiKhil AroRa. All rights reserved.
//

import UIKit

// 1. Turn it into fileprivate
fileprivate class NewViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// 3. Learn What it means to use internal
internal class AnotherViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 2. Access newViewController to show that it appears while it doesn't
    // in viewController
    fileprivate let newViewController =  NewViewController()
}

// Talking about module: FrameWork
// UIKit
