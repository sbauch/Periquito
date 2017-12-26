//
//  TwitterLoginViewContoller.swift
//  Periquito
//
//  Created by Sam Bauch on 12/11/17.
//  Copyright © 2017 Sam Bauch. All rights reserved.
//

import Foundation
import UIKit
import TwitterKit

class TwitterLoginViewController : UIViewController {
   
    @IBAction func signIn(_ sender: Any) -> Void {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        Twitter.sharedInstance().logIn { session, error in
            if session != nil { // Log in succeeded
                appDelegate.setupViewControllers()
            }
        }
    }
    
}
