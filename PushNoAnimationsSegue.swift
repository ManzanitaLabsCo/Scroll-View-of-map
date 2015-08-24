//
//  PushNoAnimationsSegue.swift
//  scroll view
//
//  Created by Jacob Pashman on 8/15/15.
//  Copyright (c) 2015 Jacob Pashman. All rights reserved.
//

import UIKit

class PushNoAnimationsSegue: UIStoryboardSegue {
    override func perform() {
        self.sourceViewController.presentViewController(
            self.destinationViewController as! UIViewController,
            animated: false,
            completion: nil)
    }}
