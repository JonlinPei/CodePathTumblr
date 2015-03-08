//
//  TrendingViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/3/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {

    var trendingFeedImage: UIImage!
    var trendingScreenImage: UIImage!
    var trendingFeedImageView: UIImageView!
    var trendingScreenImageView: UIImageView!
    var trendingScrollView: UIScrollView!
    var activityNavBarView: UITextView!
    var activityNavBarContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 1)
        view.backgroundColor = UIColor(white: 1, alpha: 1)
        
        trendingScreenImage = UIImage(named: "trending")
        trendingScreenImageView = UIImageView(image: trendingScreenImage)
        trendingScreenImageView.center = CGPoint(x: 160, y: 355)
        
        trendingScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 320, height: 524))
        trendingScrollView.contentSize = CGSize(width: 320, height: 568)
        trendingScrollView.delegate = self
        trendingScrollView.userInteractionEnabled = true
        trendingScrollView.scrollEnabled = true
        trendingScrollView.bounces = true

//        trendingFeedImage = UIImage(named: "trending_feed")
//        trendingFeedImageView = UIImageView(image: trendingFeedImage)
//        
//        trendingScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 320, height: 524))
//        trendingScrollView.contentSize = trendingFeedImageView.frame.size
//        trendingScrollView.delegate = self
//        trendingScrollView.userInteractionEnabled = true
//        trendingScrollView.scrollEnabled = true
//        trendingScrollView.bounces = true
        
        
        activityNavBarContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 60))
        activityNavBarContainerView.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        
//        activityNavBarView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 60))
        activityNavBarView = UITextView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        activityNavBarView.center = CGPoint(x: 160, y: 40)
        activityNavBarView.backgroundColor = UIColor(red: 46/255, green: 67/255, blue: 86/255, alpha: 1)
        activityNavBarView.text = String("Activity")
        activityNavBarView.textColor = UIColor(white: 1, alpha: 1)
        activityNavBarView.textAlignment = .Center
        activityNavBarView.font = UIFont(name: "Verdana-bold", size: 20)
        
        
        
        view.addSubview(trendingScrollView)
        view.addSubview(activityNavBarContainerView)
        activityNavBarContainerView.addSubview(activityNavBarView)
        trendingScrollView.addSubview(trendingScreenImageView)
        
        
        
        println("trendingScreen image size: \(trendingScreenImage.size)")
//        println("trendingFeed image size: \(trendingFeedImage.size)")
//        println("trendingFeed Frame size: \(trendingFeedImageView.frame.size)")
        println("contentsize: \(trendingScrollView.contentSize)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
