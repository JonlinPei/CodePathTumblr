//
//  LoginFormViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/6/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class LoginFormViewController: UIViewController, UIViewControllerTransitioningDelegate {

    var loginFormImageView: UIImageView!
    var loginFormImage = UIImage(named: "login_form")
    
    var cancelButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = nil
        
        loginFormImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 132))
        loginFormImageView.center = CGPoint(x: 160, y: 250)
        loginFormImageView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        loginFormImageView.image = loginFormImage
        
        cancelButton = UIButton(frame: CGRect(x: 10, y: 271, width: 150, height: 45))
//        cancelButton.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.2)
        cancelButton.addTarget(self, action: "dismissLogin", forControlEvents: UIControlEvents.TouchUpInside)

        view.addSubview(loginFormImageView)
        view.addSubview(cancelButton)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }
    
    func dismissLogin() {
        println("pressing cancel")
        dismissViewControllerAnimated(true, completion: nil)
    }

}
