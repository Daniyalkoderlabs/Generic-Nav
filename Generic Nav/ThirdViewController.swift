//
//  ThirdViewController.swift
//  Generic Nav
//
//  Created by Daniyal Yousuf on 10/9/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let baseNav = self.navigationController as? BaseNavigationView {
            baseNav.updateNavigation(type: .AUDIOVIEWCONTROLLER)
        }
        
    }
}
