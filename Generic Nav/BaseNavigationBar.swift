//
//  BaseNavigationBar.swift
//  Generic Navigation Bar
//
//  Created by Daniyal Yousuf on 10/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit

protocol BaseNavigationBarDelegate: class {
    func didTappedRight()
    func didTappedLeft()
}

class BaseNavigationBar: UINavigationBar {

    @IBOutlet weak var baseNavigationItem: UINavigationItem!
    @IBOutlet weak var buttonRight: UIBarButtonItem!
    @IBOutlet weak var buttonLeft: UIBarButtonItem!
    
    var customDelegate : BaseNavigationBarDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    @IBAction func didTappedLeft(_ sender: UIBarButtonItem) {
        
        self.customDelegate?.didTappedLeft()
        
    }
    
    @IBAction func didTappedRight(_ sender: UIBarButtonItem) {
    
        self.customDelegate?.didTappedRight()
        
    }
}
