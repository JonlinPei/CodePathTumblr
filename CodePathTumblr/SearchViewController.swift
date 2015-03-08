//
//  SearchViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/3/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UIScrollViewDelegate {

    var searchFeed: UIImageView!
    var searchFeedImage: UIImage!
    var searchScrollView: UIScrollView!
    var loadingImageView: UIImageView!
    
    let loading1Image = UIImage(named: "loading-1")
    let loading2Image = UIImage(named: "loading-2")
    let loading3Image = UIImage(named: "loading-3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 1)
        
        searchFeedImage = UIImage(named: "trending_feed")
        searchFeed = UIImageView(image: searchFeedImage)
//        searchFeed.contentMode = .ScaleAspectFill
        
        searchScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 320, height: 524))
        searchScrollView.contentSize = searchFeed.frame.size
        searchScrollView.delegate = self
        searchScrollView.userInteractionEnabled = true
        searchScrollView.scrollEnabled = true
        searchScrollView.bounces = true
      

        view.addSubview(searchScrollView)
        searchScrollView.addSubview(searchFeed)
        searchFeed.alpha = 0
        
        println("searchFeed image size: \(searchFeedImage.size)")
        println("searchFeed Frame size: \(searchFeed.frame.size)")
        println("contentsize: \(searchScrollView.contentSize)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playLoadingImage() {
        println("playing loading sequence")
        
        var loadingAnimation = UIImage.animatedImageNamed("loading-", duration: 0.6)
        
        searchFeed.alpha = 0

        loadingImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 61, height: 19))
        loadingImageView.center = CGPoint(x: 160, y: 250)
        loadingImageView.image = loadingAnimation
        searchScrollView.addSubview(loadingImageView)

        delay(1.2, { () -> () in
            self.loadingImageView.removeFromSuperview()
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.searchFeed.alpha = 1
            })
        })

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
