//
//  PHFirstLaunchAction.swift
//  ProductHunt
//
//  Created by Vlado on 3/22/16.
//  Copyright © 2016 ProductHunt. All rights reserved.
//

import Foundation

class PHFirstLaunchAction {

    class func perform(completion: PHVoidCallback) {
        let defaults = NSUserDefaults.standardUserDefaults()

        if !defaults.boolForKey("alreadyLaunched") {

            completion()

            defaults.setBool(true, forKey: "alreadyLaunched")
            defaults.synchronize()
        }
    }
}