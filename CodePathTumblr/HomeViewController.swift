//
//  HomeViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/3/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

    var homeBackground: UIImageView!
    var homeText: UIImageView!
    var homeSpinner: UIImageView!
    var homeScrollView: UIScrollView!
    var loginButton: UIButton!
    
    let homeBackgroundImage = UIImage(named: "home")
    let homeTextImage = UIImage(named: "home_overlay")
    let homeSpinnerImage = UIImage(named: "home_spinner")
    let loginFormImage = UIImage(named: "login_form")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 1)
        
        homeScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 320, height: 524))
        homeScrollView.contentSize = CGSize(width: 320, height: 568)
        homeScrollView.delegate = self
        homeScrollView.userInteractionEnabled = true
        homeScrollView.scrollEnabled = true
        homeScrollView.bounces = true
        
        
        homeBackground = UIImageView(image: homeBackgroundImage)
        homeBackground.sizeToFit()
        homeBackground.contentMode = .ScaleAspectFit
        
        homeText = UIImageView(image: homeTextImage)
        homeText.sizeToFit()
        homeText.center = CGPoint(x: 160, y: 310)
        homeText.contentMode = .ScaleAspectFit
        
        homeSpinner = UIImageView(image: homeSpinnerImage)
        homeSpinner.sizeToFit()
        homeSpinner.center = CGPoint(x: 160, y: 240)
        homeSpinner.contentMode = .ScaleAspectFit
        
        loginButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        loginButton.frame = CGRect(x: 260, y: 30, width: 55, height: 25)
        loginButton.addTarget(self, action: "showLogin", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        view.addSubview(homeScrollView)
        homeScrollView.addSubview(homeBackground)
        homeScrollView.addSubview(homeSpinner)
        homeScrollView.addSubview(homeText)
        homeScrollView.addSubview(loginButton)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func showLogin() {
        println("Login button tapped")
        performSegueWithIdentifier("toLoginFormSegue", sender: self)
        
    }
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
