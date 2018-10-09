//
//  ViewController.swift
//  Generic Navigation Bar
//
//  Created by Daniyal Yousuf on 10/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let baseNav = self.navigationController as? BaseNavigationView {
            baseNav.updateNavigation(type: .LOGINVIEWCONTROLLER)
        }
    }
}


