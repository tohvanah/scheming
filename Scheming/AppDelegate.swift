//
//  AppDelegate.swift
//  Scheming
//
//  Created by Daniel on 6/16/16.
//  Copyright © 2016 iNexi. All rights reserved.
//

import UIKit

struct theopen {
static var url = ""
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func applicationDidBecomeActive(application: UIApplication) {

        if theopen.url.characters.count > 1 {
            
            let url = theopen.url
            
            theopen.url = ""
            
            UIApplication.sharedApplication().openURL(NSURL(string:url)!)
        
            
            
        }
        
    }

    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool
    {
        let urlString = "\(url)"
            
        theopen.url = urlString.stringByReplacingOccurrencesOfString("scheming://", withString: "fmp://").stringByReplacingOccurrencesOfString("data=", withString: "param=")

        return true
    }
    
    

}