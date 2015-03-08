//
//  AccountViewController.swift
//  CodePathTumblr
//
//  Created by Jonlin Pei on 3/3/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, UIScrollViewDelegate {

    var accountImage: UIImage!
    var accountImageView: UIImageView!
    var accountScrollView: UIScrollView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 45/255, green: 70/255, blue: 92/255, alpha: 1)
        
        accountImage = UIImage(named: "account")
        accountImageView = UIImageView(image: accountImage)
       
        accountScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 320, height: 544))
        accountScrollView.contentSize = CGSize(width: 320, height: 568)
        accountScrollView.userInteractionEnabled = true
        accountScrollView.bounces = true
        accountScrollView.scrollEnabled = true
        accountScrollView.delegate = self
        
        view.addSubview(accountScrollView)
        accountScrollView.addSubview(accountImageView)
        
        println(accountImage.size)
        
        
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
