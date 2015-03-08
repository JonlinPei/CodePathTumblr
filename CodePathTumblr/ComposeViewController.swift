//
//  ComposeViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/3/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {

    var composeView: UIView!
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    var button6: UIButton!
    var nevermindButton: UIButton!
    var isPresenting: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 0.9)
        
        composeView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
//        composeView.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 0.5)
        
        button1 = UIButton(frame: CGRect(x: 1, y: 568, width: 100, height: 100))
        button1.setImage(UIImage(named: "text_icon"), forState: UIControlState.Normal)
        
        button2 = UIButton(frame: CGRect(x: 107, y: 568, width: 100, height: 100))
        button2.setImage(UIImage(named: "photo_icon"), forState: UIControlState.Normal)
        
        button3 = UIButton(frame: CGRect(x: 214, y: 568, width: 100, height: 100))
        button3.setImage(UIImage(named: "quote_icon"), forState: UIControlState.Normal)
        
        button4 = UIButton(frame: CGRect(x: 1, y: 568, width: 100, height: 100))
        button4.setImage(UIImage(named: "link_icon"), forState: UIControlState.Normal)
        
        button5 = UIButton(frame: CGRect(x: 107, y: 568, width: 100, height: 100))
        button5.setImage(UIImage(named: "chat_icon"), forState: UIControlState.Normal)
        
        button6 = UIButton(frame: CGRect(x: 214, y: 568, width: 100, height: 100))
        button6.setImage(UIImage(named: "video_icon"), forState: UIControlState.Normal)
        
        nevermindButton = UIButton(frame: CGRect(x: 0, y: 524, width: 320, height: 44))
        nevermindButton.setImage(UIImage(named: "nevermind"), forState: UIControlState.Normal)
        nevermindButton.addTarget(self, action: "dismissComposeView", forControlEvents: UIControlEvents.TouchUpInside)

        
        view.addSubview(composeView)
        composeView.addSubview(button1)
        composeView.addSubview(button2)
        composeView.addSubview(button3)
        composeView.addSubview(button4)
        composeView.addSubview(button5)
        composeView.addSubview(button6)
        composeView.addSubview(nevermindButton)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }
    
    func dismissComposeView() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as UIViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
    
    }
    
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
            isPresenting = true
            return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        println("animating transition")
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        if (isPresenting) {
            containerView.addSubview(toViewController.view)
            toViewController.view.alpha = 0

//            containerView.addSubview(toViewController.view)
//            toViewController.view.alpha = 0
//            toViewController.view.transform = CGAffineTransformMakeScale(0, 0)
            
            
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                toViewController.view.alpha = 1
                }) { (finished: Bool) -> Void in
            }
            
            UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
                self.button1.transform = CGAffineTransformMakeTranslation(0, 120-568)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
                self.button2.transform = CGAffineTransformMakeTranslation(0, 120-568)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
                self.button3.transform = CGAffineTransformMakeTranslation(0, 120-568)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
                self.button4.transform = CGAffineTransformMakeTranslation(0, 250-568)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
                self.button5.transform = CGAffineTransformMakeTranslation(0, 250-568)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
                self.button6.transform = CGAffineTransformMakeTranslation(0, 250-568)
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                }
            
            
        } else {
            
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
            }
            
            UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                self.button1.transform = CGAffineTransformMakeTranslation(0, 120-568-250)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                self.button2.transform = CGAffineTransformMakeTranslation(0, 120-568-250)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                self.button3.transform = CGAffineTransformMakeTranslation(0, 120-568-250)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                self.button4.transform = CGAffineTransformMakeTranslation(0, 250-568-350)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                self.button5.transform = CGAffineTransformMakeTranslation(0, 250-568-350)
                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
            }
            
            UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                self.button6.transform = CGAffineTransformMakeTranslation(0, 250-568-350)
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()

            }
//            UIView.animateWithDuration(0.4, animations: { () -> Void in
//                fromViewController.view.alpha = 0
////                fromViewController.view.transform = CGAffineTransformMakeScale(0.001, 0.001)
//                }) { (finished: Bool) -> Void in
//                    transitionContext.completeTransition(true)
//                    fromViewController.view.removeFromSuperview()
//                }
            }
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
