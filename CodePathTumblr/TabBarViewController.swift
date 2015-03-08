//
//  TabBarViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/3/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

//    , UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning
    
    var tabBar: UIView!
    var contentView: UIView!
    
    var homeButton: UIButton!
    var searchButton: UIButton!
    var composeButton: UIButton!
    var accountButton: UIButton!
    var trendingButton: UIButton!
    
    var selectedButton: UIButton!
    
    var explorePopupImageView: UIImageView!
    
//    var isPresenting: Bool = true
    
    var homeViewController: HomeViewController!
    var searchViewController: SearchViewController!
    
    var composeViewController: ComposeViewController!
    var accountViewController: AccountViewController!
    var trendingViewController: TrendingViewController!
    
    let homeIcon = UIImage(named: "home_icon")
    let searchIcon = UIImage(named: "search_icon")
    let composeButtonIcon = UIImage(named: "compose_button")
    let accountIcon = UIImage(named: "account_icon")
    let trendingIcon = UIImage(named: "trending_icon")
    
    let homeSelectedIcon = UIImage(named: "home_selected_icon")
    let searchSelectedIcon = UIImage(named: "search_selected_icon")
    let accountSelectedIcon = UIImage(named: "account_selected_icon")
    let trendingSelectedIcon = UIImage(named: "trending_selected_icon")
    
    let explorePopupImage = UIImage(named: "explore_popup")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 1)
        
        // Set up content view
        contentView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 524))
        contentView.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 1)
        view.addSubview(contentView)
        
        
        // Set up Tab Bar
        tabBar = UIView(frame: CGRect(x: 0, y: 524, width: 320, height: 44))
        view.addSubview(tabBar)
        
        // Set up Explore Popup
        explorePopupImageView = UIImageView(frame: CGRect(x: 0, y: 453, width: 185, height: 77.5))
        explorePopupImageView.image = explorePopupImage
        view.addSubview(explorePopupImageView)
        UIView.animateWithDuration(1.0, delay: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.explorePopupImageView.transform = CGAffineTransformMakeTranslation(0, 10)
            }) { (Bool) -> Void in
                UIView.animateWithDuration(1.0, delay: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                    self.explorePopupImageView.transform = CGAffineTransformMakeTranslation(0, -10)
                    }) { (Bool) -> Void in
                }
        }

        
        // Set up buttons
        homeButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        homeButton.frame = CGRect(x: 0, y: 0, width: 64, height: 44)
        homeButton.setImage(homeIcon, forState: UIControlState.Normal)
        homeButton.setImage(homeSelectedIcon, forState: UIControlState.Selected)
        homeButton.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        homeButton.addTarget(self, action: "showHomeScreen", forControlEvents: UIControlEvents.TouchUpInside)
        
        searchButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        searchButton.frame = CGRect(x: 64, y: 0, width: 64, height: 44)
        searchButton.setImage(searchIcon, forState: UIControlState.Normal)
        searchButton.setImage(searchSelectedIcon, forState: UIControlState.Selected)
        searchButton.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        searchButton.addTarget(self, action: "showSearchScreen", forControlEvents: UIControlEvents.TouchUpInside)

        composeButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        composeButton.frame = CGRect(x: 128, y: 0, width: 64, height: 44)
        composeButton.setImage(composeButtonIcon, forState: UIControlState.Normal)
        composeButton.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        composeButton.addTarget(self, action: "showComposeScreen", forControlEvents: UIControlEvents.TouchUpInside)
        
        accountButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        accountButton.frame = CGRect(x: 192, y: 0, width: 64, height: 44)
        accountButton.setImage(accountIcon, forState: UIControlState.Normal)
        accountButton.setImage(accountSelectedIcon, forState: UIControlState.Selected)
        accountButton.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        accountButton.addTarget(self, action: "showAccountScreen", forControlEvents: UIControlEvents.TouchUpInside)
        
        trendingButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        trendingButton.frame = CGRect(x: 256, y: 0, width: 64, height: 44)
        trendingButton.setImage(trendingIcon, forState: UIControlState.Normal)
        trendingButton.setImage(trendingSelectedIcon, forState: UIControlState.Selected)
        trendingButton.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        trendingButton.addTarget(self, action: "showTrendingScreen", forControlEvents: UIControlEvents.TouchUpInside)
        
        tabBar.addSubview(homeButton)
        tabBar.addSubview(searchButton)
        tabBar.addSubview(composeButton)
        tabBar.addSubview(accountButton)
        tabBar.addSubview(trendingButton)
        
        
        // Set up storyboard and viewcontroller isntantations...
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as HomeViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as SearchViewController
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as ComposeViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as AccountViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as TrendingViewController
        
        contentView.addSubview(homeViewController.view)
        contentView.addSubview(searchViewController.view)
        view.addSubview(composeViewController.view)
        contentView.addSubview(accountViewController.view)
        contentView.addSubview(trendingViewController.view)
        
        homeViewController.view.alpha = 1
        searchViewController.view.alpha = 0
        composeViewController.view.alpha = 0
        accountViewController.view.alpha = 0
        trendingViewController.view.alpha = 0
        
        selectedButton = homeButton
        highlightSelectedButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recr.eated.
    }
    
    func showHomeScreen() {
        println("home button tapped")
        explorePopupImageView.hidden = false
        
        homeViewController.view.alpha = 1
        searchViewController.view.alpha = 0
        composeViewController.view.alpha = 0
        accountViewController.view.alpha = 0
        trendingViewController.view.alpha = 0
        
        selectedButton = homeButton
        
        highlightSelectedButton()
        
    }

    func showSearchScreen() {
        println("search button tapped")
        explorePopupImageView.hidden = true
        
        homeViewController.view.alpha = 0
        searchViewController.view.alpha = 1
        composeViewController.view.alpha = 0
        accountViewController.view.alpha = 0
        trendingViewController.view.alpha = 0
        
        searchViewController.playLoadingImage()
        
        selectedButton = searchButton
        highlightSelectedButton()

    }

    func showComposeScreen() {
        println("compose button tapped")
        performSegueWithIdentifier("toComposeSegue", sender: self)
        
        highlightSelectedButton()

    }

    func showAccountScreen() {
        println("account button tapped")
        explorePopupImageView.hidden = false

        homeViewController.view.alpha = 0
        searchViewController.view.alpha = 0
        composeViewController.view.alpha = 0
        accountViewController.view.alpha = 1
        trendingViewController.view.alpha = 0
        
        selectedButton = accountButton
        
        highlightSelectedButton()

    }

    func showTrendingScreen() {
        println("trending button tapped")
        explorePopupImageView.hidden = false

        homeViewController.view.alpha = 0
        searchViewController.view.alpha = 0
        composeViewController.view.alpha = 0
        accountViewController.view.alpha = 0
        trendingViewController.view.alpha = 1
        
        selectedButton = trendingButton
        
        highlightSelectedButton()

    }

    
    func highlightSelectedButton() {
        homeButton.selected = false
        searchButton.selected = false
        composeButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
        
        switch selectedButton {
        case homeButton: homeButton.selected = true
        case searchButton: searchButton.selected = true
        case composeButton: composeButton.selected = true
        case accountButton: accountButton.selected = true
        case trendingButton: trendingButton.selected = true
        default: composeButton.selected = true
        }
        
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        var destinationVC = segue.destinationViewController as UIViewController
//        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
//        destinationVC.transitioningDelegate = self
//        
//    }
//
//    
//    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
//        isPresenting = true
//        return self
//    }
//    
//    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
//        isPresenting = false
//        return self
//    }
//    
//    
//    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
//        // The value here should be the duration of the animations scheduled in the animationTransition method
//        return 0.4
//    }
//    
//    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
//        println("animating transition")
//        var containerView = transitionContext.containerView()
//        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
//        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
//        
//        if (isPresenting) {
//            containerView.addSubview(toViewController.view)
//            toViewController.view.alpha = 0
//            
//            containerView.addSubview(toViewController.view)
//            toViewController.view.alpha = 0
////            toViewController.view.transform = CGAffineTransformMakeScale(0, 0)
//            
//            UIView.animateWithDuration(0.4, animations: { () -> Void in
//                toViewController.view.alpha = 1
//                
////                toViewController.view.transform = CGAffineTransformMakeScale(0.999, 0.999)
//                
//                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
//            }
//        } else {
//            UIView.animateWithDuration(0.4, animations: { () -> Void in
//                fromViewController.view.alpha = 0
////                fromViewController.view.transform = CGAffineTransformMakeScale(0.001, 0.001)
//                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
//                    fromViewController.view.removeFromSuperview()
//            }
//        }
//    }


    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
