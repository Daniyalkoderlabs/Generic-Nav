//
//  SecondViewController.swift
//  Generic Navigation Bar
//
//  Created by Daniyal Yousuf on 10/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let baseNav = self.navigationController as? BaseNavigationView {
            baseNav.updateNavigation(type: .IMAGESVIEWCONTROLLER)
        }
    }
}


