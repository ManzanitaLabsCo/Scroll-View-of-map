//
//  gameViewController.swift
//  scroll view
//
//  Created by Jacob Pashman on 8/15/15.
//  Copyright (c) 2015 Jacob Pashman. All rights reserved.
//

import UIKit

class gameViewController: UIViewController {

    var sampleGameScreen: SampleGameScreenDynamicView!
    var pauseButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var returnHome = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton

    override func viewDidLoad() {
        super.viewDidLoad()
        sampleGameScreen = SampleGameScreenDynamicView(frame: view.bounds)
        view.addSubview(sampleGameScreen)
        sampleGameScreen.addStarsAnimation()
        sampleGameScreen.addStaticIconBounceAnimation()

        //pauseButton.frame = CGRectMake(250, 140, 100, 50)
        pauseButton.backgroundColor = UIColor.blackColor()
        pauseButton.addTarget(self, action: "PauseAction:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(pauseButton)
        
//        pauseButton.setTranslatesAutoresizingMaskIntoConstraints(false)
//        let pauseButtonBottomConstraint = NSLayoutConstraint(item: pauseButton, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.BottomMargin, multiplier: 1.0, constant: -5)
//        let pauseButtonleftContraint = NSLayoutConstraint(item: pauseButton, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.LessThanOrEqual, toItem: view, attribute: NSLayoutAttribute.LeadingMargin, multiplier: 1.0, constant: 107)
//        let pauseButtonlrightContraint = NSLayoutConstraint(item: pauseButton, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1.0, constant: -350)
//		let pauseButtonlCenterContraint = NSLayoutConstraint(item: pauseButton, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
//        view.addConstraints([pauseButtonBottomConstraint, pauseButtonleftContraint, /*pauseButtonlrightContraint, pauseButtonlCenterContraint*/])
		
		
		pauseButton.setTranslatesAutoresizingMaskIntoConstraints(false)

		let pauseButtonCenterYConstraint = NSLayoutConstraint(item: pauseButton, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
		let pauseButtonCenterXConstraint = NSLayoutConstraint(item: pauseButton, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
		view.addConstraints([pauseButtonCenterXConstraint, pauseButtonCenterYConstraint])

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func PauseAction (sender: UIButton!) {
        
        sampleGameScreen.addPauseOpenedAnimation()
        returnHome.setTranslatesAutoresizingMaskIntoConstraints(false)
        returnHome.backgroundColor = UIColor.blackColor()
        returnHome.addTarget(self, action: "ReturnHomeAction:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(returnHome)
        
        returnHome.setTranslatesAutoresizingMaskIntoConstraints(false)
        let returnHomeCenterXConstraint = NSLayoutConstraint(item: returnHome, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        let returnHomeBottomContraint = NSLayoutConstraint(item: returnHome, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.BottomMargin, multiplier: 1.0, constant: -70)
        view.addConstraints([returnHomeBottomContraint, returnHomeCenterXConstraint])

        
    }
	
	func ReturnHomeAction (sender: UIButton!) {
		self.performSegueWithIdentifier("backSegue", sender: nil)
		
	}
}
