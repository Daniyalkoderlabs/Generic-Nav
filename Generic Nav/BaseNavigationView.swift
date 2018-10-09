//
//  BaseNavigationView.swift
//  Generic Navigation Bar
//
//  Created by Daniyal Yousuf on 10/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import UIKit

@objc protocol BaseNavigationViewDelegate: class {
    @objc optional func didTappedRight()
    @objc optional func didTappedLeft()
}

enum NavigationAppearances :String {
    
    case LOGINVIEWCONTROLLER = "Login",
    IMAGESVIEWCONTROLLER = "Images",
    AUDIOVIEWCONTROLLER = "Audio"
}

class BaseNavigationView: UINavigationController {
    
    var baseNavigationBar: BaseNavigationBar!
    var customDelegate: BaseNavigationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseNavigationBar = Bundle.main.loadNibNamed("BaseNavigationBar", owner:nil, options: nil)?.first as? BaseNavigationBar
        baseNavigationBar.frame = self.navigationBar.frame
        baseNavigationBar.customDelegate = self
        self.navigationBar.addSubview(baseNavigationBar)
        // Do any additional setup after loading the view.
    }
    
    func updateLeftBarImage(imageName:String) {
        
        baseNavigationBar.buttonLeft.image = UIImage.init(named: imageName)
        
    }
    
    func updateNavigation(type: NavigationAppearances)  {
        if type == .LOGINVIEWCONTROLLER {
            
            baseNavigationBar.baseNavigationItem.title = type.rawValue
            baseNavigationBar.buttonLeft.title  = ""
            baseNavigationBar.buttonRight.title = "Add"
            
        } else if type == .IMAGESVIEWCONTROLLER {
            
            baseNavigationBar.baseNavigationItem.title = type.rawValue
            baseNavigationBar.buttonLeft.title = "BACK"
            baseNavigationBar.buttonRight.title = "Multiply"
        }
        else {
            baseNavigationBar.baseNavigationItem.title = type.rawValue
            baseNavigationBar.buttonLeft.title = "<"
            baseNavigationBar.buttonRight.title = ">"
        }
        
        
    }
    
    func hideRightButton() {
        
    }
    
    func hideLeftButton() {
        
        
    }
    
    func showRightButton() {
        
    }
    
    func showLeftButton(){
        
        
    }
}

extension BaseNavigationView: BaseNavigationBarDelegate {
    
    func didTappedRight() {
        self.customDelegate?.didTappedRight()
    }
    
    func didTappedLeft() {
        self.popViewController(animated: true)
        self.customDelegate?.didTappedLeft()
    }
    
}
