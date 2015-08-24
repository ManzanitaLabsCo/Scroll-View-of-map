//
//  ViewController.swift
//  scroll view
//
//  Created by Jacob Pashman on 6/11/15.
//  Copyright (c) 2015 Jacob Pashman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var storeScrollView: UIScrollView!
    var imageView: UIImageView!
    var scrollView: UIScrollView!
    var containerView = UIView()
    var buttonScroll: UIScrollView!
    let tapRec = UITapGestureRecognizer()
    var storeTab: UIImageView!
    var swipe: String!
    
    var tempMoney = 5075
    
    var lvl1button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl2button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl3button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl4button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl5button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl6button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl7button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl8button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl9button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl10button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl11button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var lvl12button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        



        // 1
        imageView = UIImageView(image: UIImage(named: "Map 1.png"))
        // 2
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.blackColor()
        // 3
        scrollView.contentSize = imageView.bounds.size
        // 4
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        scrollView.contentSize.height = scrollView.frame.size.height
        
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        
        tapRec.addTarget(self, action: "tappedView")
        scrollView.addGestureRecognizer(tapRec)
        
        
        lvl1button.frame = CGRectMake(250, 140, 100, 50)
        let level1 = UIImage(named: "Lvl 1 Button.png") as UIImage!
        lvl1button.setImage(level1, forState: .Normal)
        lvl1button.addTarget(self, action: "Action:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl1button)
        
        lvl2button.frame = CGRectMake(350, 200, 100, 50)
        let level2 = UIImage(named: "Lvl 2 Button.png") as UIImage!
        lvl2button.setImage(level2, forState: .Normal)
        lvl2button.addTarget(self, action: "Action2:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl2button)
        
        lvl3button.frame = CGRectMake(400, 275, 100, 50)
        let level3 = UIImage(named: "Lvl 3 Button.png") as UIImage!
        lvl3button.setImage(level3, forState: .Normal)
        lvl3button.addTarget(self, action: "Action3:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl3button)
        
        lvl4button.frame = CGRectMake(600, 250, 100, 50)
        let level4 = UIImage(named: "Lvl 4 Button.png") as UIImage!
        lvl4button.setImage(level4, forState: .Normal)
        lvl4button.addTarget(self, action: "Action4:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl4button)
        
        lvl5button.frame = CGRectMake(725, 220, 100, 50)
        let level5 = UIImage(named: "Lvl 5 Button.png") as UIImage!
        lvl5button.setImage(level5, forState: .Normal)
        lvl5button.addTarget(self, action: "Action5:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl5button)
        
        lvl6button.frame = CGRectMake(850, 240, 100, 50)
        let level6 = UIImage(named: "Lvl 6 Button.png") as UIImage!
        lvl6button.setImage(level6, forState: .Normal)
        lvl6button.addTarget(self, action: "Action6:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl6button)
        
        lvl7button.frame = CGRectMake(880, 165, 100, 50)
        let level7 = UIImage(named: "Lvl 7 Button.png") as UIImage!
        lvl7button.setImage(level7, forState: .Normal)
        lvl7button.addTarget(self, action: "Action7:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl7button)
        
        lvl8button.frame = CGRectMake(970, 150, 100, 50)
        let level8 = UIImage(named: "Lvl 8 Button.png") as UIImage!
        lvl8button.setImage(level8, forState: .Normal)
        lvl8button.addTarget(self, action: "Action8:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl8button)
        
        lvl9button.frame = CGRectMake(1000, 200, 100, 50)
        let level9 = UIImage(named: "Lvl 9 Button.png") as UIImage!
        lvl9button.setImage(level9, forState: .Normal)
        lvl9button.addTarget(self, action: "Action9:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl9button)
        
        lvl10button.frame = CGRectMake(1100, 250, 100, 50)
        let level10 = UIImage(named: "Lvl 10 Button.png") as UIImage!
        lvl10button.setImage(level10, forState: .Normal)
        lvl10button.addTarget(self, action: "Action10:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl10button)
        
        lvl11button.frame = CGRectMake(1200, 190, 100, 50)
        let level11 = UIImage(named: "Lvl 11 Button.png") as UIImage!
        lvl11button.setImage(level11, forState: .Normal)
        lvl11button.addTarget(self, action: "Action11:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl11button)
        
        lvl12button.frame = CGRectMake(1130, 120, 100, 50)
        let level12 = UIImage(named: "Lvl 12 Button.png") as UIImage!
        lvl12button.setImage(level12, forState: .Normal)
        lvl12button.addTarget(self, action: "Action12:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(lvl12button)
        

        storeTabFunc()
        
    }
    var imageView1: UIImageView!
    var individualButton11  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton21  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton31  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView41: UIImageView!
    var imageView51: UIImageView!
    var number1: UIImageView!
    func Action (sender: UIButton!) {
        
        lvl1button.userInteractionEnabled = false
        
        imageView1 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView1.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView1)
        
        imageView1.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView1ConstraintX = NSLayoutConstraint(item: imageView1, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView1ConstraintY = NSLayoutConstraint(item: imageView1, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView1ConstraintX, imageView1ConstraintY])
        
        imageView41 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView41.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView41)
        
        
        imageView41.setTranslatesAutoresizingMaskIntoConstraints(false)
        

        
        // Center x
        let imageView41ConstraintX = NSLayoutConstraint(item: imageView41, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView41ConstraintY = NSLayoutConstraint(item: imageView41, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView41ConstraintX, imageView41ConstraintY])
        
        
        
        imageView51 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView51.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView51)
        
        imageView51.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView51ConstraintX = NSLayoutConstraint(item: imageView51, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView51ConstraintY = NSLayoutConstraint(item: imageView51, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView51ConstraintX, imageView51ConstraintY])
        
        individualButton11.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton11.setImage(level1, forState: .Normal)
        individualButton11.addTarget(self, action: "levelActionCoreAnimator:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton11)
        
        individualButton11.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton11ConstraintX = NSLayoutConstraint(item: individualButton11, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton11ConstraintY = NSLayoutConstraint(item: individualButton11, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton11ConstraintX, individualButton11ConstraintY])
        
        individualButton21.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton21.setImage(level2, forState: .Normal)
        individualButton21.addTarget(self, action: "levelActionCoreAnimator:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton21)
        
        individualButton21.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton21ConstraintX = NSLayoutConstraint(item: individualButton21, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton21ConstraintY = NSLayoutConstraint(item: individualButton21, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton21ConstraintX, individualButton21ConstraintY])
        
        individualButton31.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton31.setImage(level3, forState: .Normal)
        individualButton31.addTarget(self, action: "levelActionCoreAnimator:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton31)
        
        individualButton31.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton31ConstraintX = NSLayoutConstraint(item: individualButton31, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton31ConstraintY = NSLayoutConstraint(item: individualButton31, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton31ConstraintX, individualButton31ConstraintY])

        
        
        number1 = UIImageView(image: UIImage(named: "1 Number"))
        number1.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number1)
        
        number1.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number1ConstraintX = NSLayoutConstraint(item: number1, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number1ConstraintY = NSLayoutConstraint(item: number1, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number1ConstraintX, number1ConstraintY])
        
        
        imageView1.hidden = false
        imageView41.hidden = false
        imageView51.hidden = false
        individualButton11.hidden = false
        individualButton21.hidden = false
        individualButton31.hidden = false
        number1.hidden = false
        
    }
    var imageView2: UIImageView!
    var individualButton12  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton22  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton32  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView42: UIImageView!
    var imageView52: UIImageView!
    var number2: UIImageView!
    
    func Action2 (sender: UIButton!) {
        lvl2button.userInteractionEnabled = false
        
        imageView2 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView2.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView2)
        
        imageView2.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView2ConstraintX = NSLayoutConstraint(item: imageView2, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView2ConstraintY = NSLayoutConstraint(item: imageView2, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView2ConstraintX, imageView2ConstraintY])
        
        imageView42 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView42.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView42)
        
        
        imageView42.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView42ConstraintX = NSLayoutConstraint(item: imageView42, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView42ConstraintY = NSLayoutConstraint(item: imageView42, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView42ConstraintX, imageView42ConstraintY])
        
        
        
        imageView52 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView52.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView52)
        
        imageView52.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView52ConstraintX = NSLayoutConstraint(item: imageView52, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView52ConstraintY = NSLayoutConstraint(item: imageView52, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView52ConstraintX, imageView52ConstraintY])
        
        individualButton12.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton12.setImage(level1, forState: .Normal)
        individualButton12.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton12)
        
        individualButton12.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton12ConstraintX = NSLayoutConstraint(item: individualButton12, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton12ConstraintY = NSLayoutConstraint(item: individualButton12, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton12ConstraintX, individualButton12ConstraintY])
        
        individualButton22.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton22.setImage(level2, forState: .Normal)
        individualButton22.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton22)
        
        individualButton22.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton22ConstraintX = NSLayoutConstraint(item: individualButton22, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton22ConstraintY = NSLayoutConstraint(item: individualButton22, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton22ConstraintX, individualButton22ConstraintY])
        
        individualButton32.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton32.setImage(level3, forState: .Normal)
        individualButton32.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton32)
        
        individualButton32.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton32ConstraintX = NSLayoutConstraint(item: individualButton32, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton32ConstraintY = NSLayoutConstraint(item: individualButton32, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton32ConstraintX, individualButton32ConstraintY])
        
        
        
        number2 = UIImageView(image: UIImage(named: "2 Number"))
        number2.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number2)
        
        number2.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number2ConstraintX = NSLayoutConstraint(item: number2, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number2ConstraintY = NSLayoutConstraint(item: number2, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number2ConstraintX, number2ConstraintY])
        
        imageView2.hidden = false
        imageView42.hidden = false
        imageView52.hidden = false
        individualButton12.hidden = false
        individualButton22.hidden = false
        individualButton32.hidden = false
        number2.hidden = false
    }
    var imageView3: UIImageView!
    var individualButton13  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton23  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton33  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView43: UIImageView!
    var imageView53: UIImageView!
    var number3: UIImageView!
    func Action3 (sender: UIButton!) {
        lvl3button.userInteractionEnabled = false
        imageView3 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView3.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView3)
        
        imageView3.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView3ConstraintX = NSLayoutConstraint(item: imageView3, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView3ConstraintY = NSLayoutConstraint(item: imageView3, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView3ConstraintX, imageView3ConstraintY])
        
        imageView43 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView41.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView43)
        
        
        imageView43.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView43ConstraintX = NSLayoutConstraint(item: imageView43, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView43ConstraintY = NSLayoutConstraint(item: imageView43, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView43ConstraintX, imageView43ConstraintY])
        
        
        
        imageView53 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView53.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView53)
        
        imageView53.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView53ConstraintX = NSLayoutConstraint(item: imageView53, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView53ConstraintY = NSLayoutConstraint(item: imageView53, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView53ConstraintX, imageView53ConstraintY])
        
        individualButton13.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton13.setImage(level1, forState: .Normal)
        individualButton13.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton13)
        
        individualButton13.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton13ConstraintX = NSLayoutConstraint(item: individualButton13, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton13ConstraintY = NSLayoutConstraint(item: individualButton13, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton13ConstraintX, individualButton13ConstraintY])
        
        individualButton23.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton23.setImage(level2, forState: .Normal)
        individualButton23.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton23)
        
        individualButton23.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton23ConstraintX = NSLayoutConstraint(item: individualButton23, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton23ConstraintY = NSLayoutConstraint(item: individualButton23, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton23ConstraintX, individualButton23ConstraintY])
        
        individualButton33.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton33.setImage(level3, forState: .Normal)
        individualButton33.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton33)
        
        individualButton33.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton33ConstraintX = NSLayoutConstraint(item: individualButton33, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton33ConstraintY = NSLayoutConstraint(item: individualButton33, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton33ConstraintX, individualButton33ConstraintY])
        
        
        
        number3 = UIImageView(image: UIImage(named: "3 Number"))
        number3.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number3)
        
        number3.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number3ConstraintX = NSLayoutConstraint(item: number3, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number3ConstraintY = NSLayoutConstraint(item: number3, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number3ConstraintX, number3ConstraintY])
        imageView3.hidden = false
        imageView43.hidden = false
        imageView53.hidden = false
        individualButton13.hidden = false
        individualButton23.hidden = false
        individualButton33.hidden = false
        number3.hidden = false


    }
    var imageView4: UIImageView!
    var individualButton14  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton24  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton34  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView44: UIImageView!
    var imageView54: UIImageView!
    var number4: UIImageView!
    func Action4 (sender: UIButton!) {
        lvl4button.userInteractionEnabled = false
        imageView4 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView4.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView4)
        
        imageView4.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView4ConstraintX = NSLayoutConstraint(item: imageView4, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView4ConstraintY = NSLayoutConstraint(item: imageView4, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView4ConstraintX, imageView4ConstraintY])
        
        imageView44 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView44.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView44)
        
        
        imageView44.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView44ConstraintX = NSLayoutConstraint(item: imageView44, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView44ConstraintY = NSLayoutConstraint(item: imageView44, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView44ConstraintX, imageView44ConstraintY])
        
        
        
        imageView54 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView54.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView54)
        
        imageView54.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView54ConstraintX = NSLayoutConstraint(item: imageView54, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView54ConstraintY = NSLayoutConstraint(item: imageView54, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView54ConstraintX, imageView54ConstraintY])
        
        individualButton14.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton14.setImage(level1, forState: .Normal)
        individualButton14.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton14)
        
        individualButton14.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton14ConstraintX = NSLayoutConstraint(item: individualButton14, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton14ConstraintY = NSLayoutConstraint(item: individualButton14, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton14ConstraintX, individualButton14ConstraintY])
        
        individualButton24.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton24.setImage(level2, forState: .Normal)
        individualButton24.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton24)
        
        individualButton24.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton24ConstraintX = NSLayoutConstraint(item: individualButton24, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton24ConstraintY = NSLayoutConstraint(item: individualButton24, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton24ConstraintX, individualButton24ConstraintY])
        
        individualButton34.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton34.setImage(level3, forState: .Normal)
        individualButton34.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton34)
        
        individualButton34.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton34ConstraintX = NSLayoutConstraint(item: individualButton34, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton34ConstraintY = NSLayoutConstraint(item: individualButton34, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton34ConstraintX, individualButton34ConstraintY])
        
        
        
        number4 = UIImageView(image: UIImage(named: "4 Number"))
        number4.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number4)
        
        number4.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number4ConstraintX = NSLayoutConstraint(item: number4, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number4ConstraintY = NSLayoutConstraint(item: number4, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number4ConstraintX, number4ConstraintY])
        
        imageView4.hidden = false
        imageView44.hidden = false
        imageView54.hidden = false
        individualButton14.hidden = false
        individualButton24.hidden = false
        individualButton34.hidden = false
        number4.hidden = false

    }
    var imageView5: UIImageView!
    var individualButton15  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton25  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton35  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView45: UIImageView!
    var imageView55: UIImageView!
    var number5: UIImageView!
    func Action5 (sender: UIButton!) {
        lvl5button.userInteractionEnabled = false
        imageView5 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView5.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView5)
        
        imageView5.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView5ConstraintX = NSLayoutConstraint(item: imageView5, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView5ConstraintY = NSLayoutConstraint(item: imageView5, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView5ConstraintX, imageView5ConstraintY])
        
        imageView45 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView45.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView45)
        
        
        imageView45.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView45ConstraintX = NSLayoutConstraint(item: imageView45, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView45ConstraintY = NSLayoutConstraint(item: imageView45, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView45ConstraintX, imageView45ConstraintY])
        
        
        
        imageView55 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView55.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView55)
        
        imageView55.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView55ConstraintX = NSLayoutConstraint(item: imageView55, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView55ConstraintY = NSLayoutConstraint(item: imageView55, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView55ConstraintX, imageView55ConstraintY])
        
        individualButton15.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton15.setImage(level1, forState: .Normal)
        individualButton15.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton15)
        
        individualButton15.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton15ConstraintX = NSLayoutConstraint(item: individualButton15, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton15ConstraintY = NSLayoutConstraint(item: individualButton15, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton15ConstraintX, individualButton15ConstraintY])
        
        individualButton25.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton25.setImage(level2, forState: .Normal)
        individualButton25.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton25)
        
        individualButton25.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton25ConstraintX = NSLayoutConstraint(item: individualButton25, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton25ConstraintY = NSLayoutConstraint(item: individualButton25, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton25ConstraintX, individualButton25ConstraintY])
        
        individualButton35.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton35.setImage(level3, forState: .Normal)
        individualButton35.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton35)
        
        individualButton35.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton35ConstraintX = NSLayoutConstraint(item: individualButton35, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton35ConstraintY = NSLayoutConstraint(item: individualButton35, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton35ConstraintX, individualButton35ConstraintY])
        
        
        
        number5 = UIImageView(image: UIImage(named: "5 Number"))
        number5.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number5)
        
        number5.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number5ConstraintX = NSLayoutConstraint(item: number5, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number5ConstraintY = NSLayoutConstraint(item: number5, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number5ConstraintX, number5ConstraintY])
        
        
        imageView5.hidden = false
        imageView45.hidden = false
        imageView55.hidden = false
        individualButton15.hidden = false
        individualButton25.hidden = false
        individualButton35.hidden = false
        number5.hidden = false

    }
    var imageView6: UIImageView!
    var individualButton16  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton26  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton36  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView46: UIImageView!
    var imageView56: UIImageView!
    var number6: UIImageView!
    func Action6 (sender: UIButton!) {
        lvl6button.userInteractionEnabled = false
        
        imageView6 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView6.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView6)
        
        imageView6.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView6ConstraintX = NSLayoutConstraint(item: imageView6, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView6ConstraintY = NSLayoutConstraint(item: imageView6, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView6ConstraintX, imageView6ConstraintY])
        
        imageView46 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView46.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView46)
        
        
        imageView46.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView46ConstraintX = NSLayoutConstraint(item: imageView46, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView46ConstraintY = NSLayoutConstraint(item: imageView46, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView46ConstraintX, imageView46ConstraintY])
        
        
        
        imageView56 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView55.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView56)
        
        imageView56.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView56ConstraintX = NSLayoutConstraint(item: imageView56, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView56ConstraintY = NSLayoutConstraint(item: imageView56, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView56ConstraintX, imageView56ConstraintY])
        
        individualButton16.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton16.setImage(level1, forState: .Normal)
        individualButton16.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton16)
        
        individualButton16.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton16ConstraintX = NSLayoutConstraint(item: individualButton16, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton16ConstraintY = NSLayoutConstraint(item: individualButton16, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton16ConstraintX, individualButton16ConstraintY])
        
        individualButton26.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton26.setImage(level2, forState: .Normal)
        individualButton26.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton26)
        
        individualButton26.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton26ConstraintX = NSLayoutConstraint(item: individualButton26, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton26ConstraintY = NSLayoutConstraint(item: individualButton26, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton26ConstraintX, individualButton26ConstraintY])
        
        individualButton36.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton36.setImage(level3, forState: .Normal)
        individualButton36.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton36)
        
        individualButton36.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton36ConstraintX = NSLayoutConstraint(item: individualButton36, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton36ConstraintY = NSLayoutConstraint(item: individualButton36, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton36ConstraintX, individualButton36ConstraintY])
        
        
        
        number6 = UIImageView(image: UIImage(named: "6 Number"))
        number5.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number6)
        
        number6.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number6ConstraintX = NSLayoutConstraint(item: number6, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number6ConstraintY = NSLayoutConstraint(item: number6, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number6ConstraintX, number6ConstraintY])
        imageView6.hidden = false
        imageView46.hidden = false
        imageView56.hidden = false
        individualButton16.hidden = false
        individualButton26.hidden = false
        individualButton36.hidden = false
        number6.hidden = false

    }
    var imageView7: UIImageView!
    var individualButton17  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton27  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton37  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView47: UIImageView!
    var imageView57: UIImageView!
    var number7: UIImageView!
    func Action7 (sender: UIButton!) {
        lvl7button.userInteractionEnabled = false
        
        imageView7 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView7.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView7)
        
        imageView7.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView7ConstraintX = NSLayoutConstraint(item: imageView7, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView7ConstraintY = NSLayoutConstraint(item: imageView7, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView7ConstraintX, imageView7ConstraintY])
        
        imageView47 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView47.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView47)
        
        
        imageView47.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView47ConstraintX = NSLayoutConstraint(item: imageView47, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView47ConstraintY = NSLayoutConstraint(item: imageView47, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView47ConstraintX, imageView47ConstraintY])
        
        
        
        imageView57 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView57.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView57)
        
        imageView57.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView57ConstraintX = NSLayoutConstraint(item: imageView57, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView57ConstraintY = NSLayoutConstraint(item: imageView57, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView57ConstraintX, imageView57ConstraintY])
        
        individualButton17.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton17.setImage(level1, forState: .Normal)
        individualButton17.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton17)
        
        individualButton17.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton17ConstraintX = NSLayoutConstraint(item: individualButton17, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton17ConstraintY = NSLayoutConstraint(item: individualButton17, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton17ConstraintX, individualButton17ConstraintY])
        
        individualButton27.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton27.setImage(level2, forState: .Normal)
        individualButton27.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton27)
        
        individualButton27.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton27ConstraintX = NSLayoutConstraint(item: individualButton27, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton27ConstraintY = NSLayoutConstraint(item: individualButton27, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton27ConstraintX, individualButton27ConstraintY])
        
        individualButton37.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton37.setImage(level3, forState: .Normal)
        individualButton37.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton37)
        
        individualButton37.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton37ConstraintX = NSLayoutConstraint(item: individualButton37, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton37ConstraintY = NSLayoutConstraint(item: individualButton37, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton37ConstraintX, individualButton37ConstraintY])
        
        
        
        number7 = UIImageView(image: UIImage(named: "7 Number"))
        number7.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number7)
        
        number7.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number7ConstraintX = NSLayoutConstraint(item: number7, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number7ConstraintY = NSLayoutConstraint(item: number7, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number7ConstraintX, number7ConstraintY])
        
        imageView7.hidden = false
        imageView47.hidden = false
        imageView57.hidden = false
        individualButton17.hidden = false
        individualButton27.hidden = false
        individualButton37.hidden = false
        number7.hidden = false

    }
    var imageView8: UIImageView!
    var individualButton18  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton28  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton38  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView48: UIImageView!
    var imageView58: UIImageView!
    var number8: UIImageView!
    func Action8 (sender: UIButton!) {
        lvl8button.userInteractionEnabled = false
        
        imageView8 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView8.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView8)
        
        imageView8.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView8ConstraintX = NSLayoutConstraint(item: imageView8, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView8ConstraintY = NSLayoutConstraint(item: imageView8, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView8ConstraintX, imageView8ConstraintY])
        
        imageView48 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView48.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView48)
        
        
        imageView48.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView48ConstraintX = NSLayoutConstraint(item: imageView48, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView48ConstraintY = NSLayoutConstraint(item: imageView48, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView48ConstraintX, imageView48ConstraintY])
        
        
        
        imageView58 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView58.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView58)
        
        imageView58.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView58ConstraintX = NSLayoutConstraint(item: imageView58, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView58ConstraintY = NSLayoutConstraint(item: imageView58, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView58ConstraintX, imageView58ConstraintY])
        
        individualButton18.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton18.setImage(level1, forState: .Normal)
        individualButton18.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton18)
        
        individualButton18.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton18ConstraintX = NSLayoutConstraint(item: individualButton18, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton18ConstraintY = NSLayoutConstraint(item: individualButton18, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton18ConstraintX, individualButton18ConstraintY])
        
        individualButton28.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton28.setImage(level2, forState: .Normal)
        individualButton28.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton28)
        
        individualButton28.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton28ConstraintX = NSLayoutConstraint(item: individualButton28, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton28ConstraintY = NSLayoutConstraint(item: individualButton28, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton28ConstraintX, individualButton28ConstraintY])
        
        individualButton38.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton38.setImage(level3, forState: .Normal)
        individualButton38.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton38)
        
        individualButton38.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton38ConstraintX = NSLayoutConstraint(item: individualButton38, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton38ConstraintY = NSLayoutConstraint(item: individualButton38, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton38ConstraintX, individualButton38ConstraintY])
        
        
        
        number8 = UIImageView(image: UIImage(named: "8 Number"))
        number8.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number8)
        
        number8.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number8ConstraintX = NSLayoutConstraint(item: number8, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number8ConstraintY = NSLayoutConstraint(item: number8, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number8ConstraintX, number8ConstraintY])
        
        imageView8.hidden = false
        imageView48.hidden = false
        imageView58.hidden = false
        individualButton18.hidden = false
        individualButton28.hidden = false
        individualButton38.hidden = false
        number8.hidden = false

    }
    var imageView9: UIImageView!
    var individualButton19  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton29  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton39  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView49: UIImageView!
    var imageView59: UIImageView!
    var number9: UIImageView!
    func Action9 (sender: UIButton!) {
        lvl9button.userInteractionEnabled = false
        imageView9 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView9.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView9)
        
        imageView9.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView9ConstraintX = NSLayoutConstraint(item: imageView9, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView9ConstraintY = NSLayoutConstraint(item: imageView9, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView9ConstraintX, imageView9ConstraintY])
        
        imageView49 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView49.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView49)
        
        
        imageView49.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView49ConstraintX = NSLayoutConstraint(item: imageView49, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView49ConstraintY = NSLayoutConstraint(item: imageView49, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView49ConstraintX, imageView49ConstraintY])
        
        
        
        imageView59 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView59.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView59)
        
        imageView59.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView59ConstraintX = NSLayoutConstraint(item: imageView59, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView59ConstraintY = NSLayoutConstraint(item: imageView59, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView59ConstraintX, imageView59ConstraintY])
        
        individualButton19.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton19.setImage(level1, forState: .Normal)
        individualButton19.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton19)
        
        individualButton19.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton19ConstraintX = NSLayoutConstraint(item: individualButton19, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton19ConstraintY = NSLayoutConstraint(item: individualButton19, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton19ConstraintX, individualButton19ConstraintY])
        
        individualButton29.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton29.setImage(level2, forState: .Normal)
        individualButton29.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton29)
        
        individualButton29.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton29ConstraintX = NSLayoutConstraint(item: individualButton29, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton29ConstraintY = NSLayoutConstraint(item: individualButton29, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton29ConstraintX, individualButton29ConstraintY])
        
        individualButton39.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton39.setImage(level3, forState: .Normal)
        individualButton39.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton39)
        
        individualButton39.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton39ConstraintX = NSLayoutConstraint(item: individualButton39, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton39ConstraintY = NSLayoutConstraint(item: individualButton39, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton39ConstraintX, individualButton39ConstraintY])
        
        
        
        number9 = UIImageView(image: UIImage(named: "9 Number"))
        number9.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number9)
        
        number9.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number9ConstraintX = NSLayoutConstraint(item: number9, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number9ConstraintY = NSLayoutConstraint(item: number9, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number9ConstraintX, number9ConstraintY])
        imageView9.hidden = false
        imageView49.hidden = false
        imageView59.hidden = false
        individualButton19.hidden = false
        individualButton29.hidden = false
        individualButton39.hidden = false
        number9.hidden = false

    }
    var imageView10: UIImageView!
    var individualButton110  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton210  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton310  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView410: UIImageView!
    var imageView510: UIImageView!
    var number10: UIImageView!
    func Action10 (sender: UIButton!) {
        lvl10button.userInteractionEnabled = false
        
        imageView10 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView10.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView10)
        
        imageView10.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView10ConstraintX = NSLayoutConstraint(item: imageView10, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView10ConstraintY = NSLayoutConstraint(item: imageView10, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView10ConstraintX, imageView10ConstraintY])
        
        imageView410 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView410.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView410)
        
        
        imageView410.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView410ConstraintX = NSLayoutConstraint(item: imageView410, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView410ConstraintY = NSLayoutConstraint(item: imageView410, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView410ConstraintX, imageView410ConstraintY])
        
        
        
        imageView510 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView510.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView510)
        
        imageView510.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView510ConstraintX = NSLayoutConstraint(item: imageView510, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView510ConstraintY = NSLayoutConstraint(item: imageView510, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView510ConstraintX, imageView510ConstraintY])
        
        individualButton110.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton110.setImage(level1, forState: .Normal)
        individualButton110.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton110)
        
        individualButton110.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton110ConstraintX = NSLayoutConstraint(item: individualButton110, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton110ConstraintY = NSLayoutConstraint(item: individualButton110, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton110ConstraintX, individualButton110ConstraintY])
        
        individualButton210.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton210.setImage(level2, forState: .Normal)
        individualButton210.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton210)
        
        individualButton210.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton210ConstraintX = NSLayoutConstraint(item: individualButton210, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton210ConstraintY = NSLayoutConstraint(item: individualButton210, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton210ConstraintX, individualButton210ConstraintY])
        
        individualButton310.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton310.setImage(level3, forState: .Normal)
        individualButton310.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton310)
        
        individualButton310.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton310ConstraintX = NSLayoutConstraint(item: individualButton310, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton310ConstraintY = NSLayoutConstraint(item: individualButton310, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton310ConstraintX, individualButton310ConstraintY])
        
        
        
        number10 = UIImageView(image: UIImage(named: "10 Number"))
        number10.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number10)
        
        number10.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number10ConstraintX = NSLayoutConstraint(item: number10, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number10ConstraintY = NSLayoutConstraint(item: number10, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number10ConstraintX, number10ConstraintY])
        imageView10.hidden = false
        imageView410.hidden = false
        imageView510.hidden = false
        individualButton110.hidden = false
        individualButton210.hidden = false
        individualButton310.hidden = false
        number10.hidden = false

    }
    var imageView11: UIImageView!
    var individualButton111  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton211  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton311  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView411: UIImageView!
    var imageView511: UIImageView!
    var number11: UIImageView!
    func Action11 (sender: UIButton!) {
        lvl11button.userInteractionEnabled = false
        imageView11 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView1.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView11)
        
        imageView11.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView11ConstraintX = NSLayoutConstraint(item: imageView11, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView11ConstraintY = NSLayoutConstraint(item: imageView11, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView11ConstraintX, imageView11ConstraintY])
        
        imageView411 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView4111.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView411)
        
        
        imageView411.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView411ConstraintX = NSLayoutConstraint(item: imageView411, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView411ConstraintY = NSLayoutConstraint(item: imageView411, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView411ConstraintX, imageView411ConstraintY])
        
        
        
        imageView511 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView511.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView511)
        
        imageView511.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView511ConstraintX = NSLayoutConstraint(item: imageView511, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView511ConstraintY = NSLayoutConstraint(item: imageView511, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView511ConstraintX, imageView511ConstraintY])
        
        individualButton111.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton111.setImage(level1, forState: .Normal)
        individualButton111.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton111)
        
        individualButton111.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton111ConstraintX = NSLayoutConstraint(item: individualButton111, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton111ConstraintY = NSLayoutConstraint(item: individualButton111, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton111ConstraintX, individualButton111ConstraintY])
        
        individualButton211.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton211.setImage(level2, forState: .Normal)
        individualButton211.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton211)
        
        individualButton211.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton211ConstraintX = NSLayoutConstraint(item: individualButton211, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton211ConstraintY = NSLayoutConstraint(item: individualButton211, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton211ConstraintX, individualButton211ConstraintY])
        
        individualButton311.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton311.setImage(level3, forState: .Normal)
        individualButton311.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton311)
        
        individualButton311.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton311ConstraintX = NSLayoutConstraint(item: individualButton311, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton311ConstraintY = NSLayoutConstraint(item: individualButton311, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton311ConstraintX, individualButton311ConstraintY])
        
        
        
        number11 = UIImageView(image: UIImage(named: "11 Number"))
        number11.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number11)
        
        number11.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number11ConstraintX = NSLayoutConstraint(item: number11, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number11ConstraintY = NSLayoutConstraint(item: number11, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number11ConstraintX, number11ConstraintY])
        
        imageView11.hidden = false
        imageView411.hidden = false
        imageView511.hidden = false
        individualButton111.hidden = false
        individualButton211.hidden = false
        individualButton311.hidden = false
        number11.hidden = false

    }
    var imageView12: UIImageView!
    var individualButton112  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton212  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var individualButton312  = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
    var imageView412: UIImageView!
    var imageView512: UIImageView!
    var number12: UIImageView!
    func Action12 (sender: UIButton!) {
        lvl12button.userInteractionEnabled = false
        imageView12 = UIImageView(image: UIImage(named: "Level Menu Tab Background.png"))
        //imageView12.frame = CGRectMake(140, 80, 400, 230)
        view.addSubview(imageView12)
        
        imageView12.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        // Center x
        let imageView12ConstraintX = NSLayoutConstraint(item: imageView12, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageView12ConstraintY = NSLayoutConstraint(item: imageView12, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageView12ConstraintX, imageView12ConstraintY])
        
        imageView412 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView412.frame = CGRectMake(250, 193, 75, 10)
        view.addSubview(imageView412)
        
        
        imageView412.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        // Center x
        let imageView412ConstraintX = NSLayoutConstraint(item: imageView412, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -50)
        
        // center y
        let imageView412ConstraintY = NSLayoutConstraint(item: imageView412, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView412ConstraintX, imageView412ConstraintY])
        
        
        
        imageView512 = UIImageView(image: UIImage(named: "Level Menu Connection Line.png"))
        //imageView512.frame = CGRectMake(350, 193, 75, 10)
        view.addSubview(imageView512)
        
        imageView512.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageView512ConstraintX = NSLayoutConstraint(item: imageView512, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 50)
        
        // center y
        let imageView512ConstraintY = NSLayoutConstraint(item: imageView512, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([imageView512ConstraintX, imageView512ConstraintY])
        
        individualButton112.frame = CGRectMake(210, 175, 50, 50)
        let level1 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton112.setImage(level1, forState: .Normal)
        individualButton112.addTarget(self, action: "levelAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton112)
        
        individualButton112.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton112ConstraintX = NSLayoutConstraint(item: individualButton112, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let individualButton112ConstraintY = NSLayoutConstraint(item: individualButton112, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton112ConstraintX, individualButton112ConstraintY])
        
        individualButton212.frame = CGRectMake(310, 175, 50, 50)
        let level2 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton212.setImage(level2, forState: .Normal)
        individualButton212.addTarget(self, action: "levelAction12:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton212)
        
        individualButton212.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton212ConstraintX = NSLayoutConstraint(item: individualButton212, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -100)
        
        // center y
        let individualButton212ConstraintY = NSLayoutConstraint(item: individualButton212, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton212ConstraintX, individualButton212ConstraintY])
        
        individualButton312.frame = CGRectMake(410, 175, 50, 50)
        let level3 = UIImage(named: "Level Menu Uncomleted Level.png") as UIImage!
        individualButton312.setImage(level3, forState: .Normal)
        individualButton312.addTarget(self, action: "levelAction13:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(individualButton312)
        
        individualButton312.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let individualButton312ConstraintX = NSLayoutConstraint(item: individualButton312, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 100)
        
        // center y
        let individualButton312ConstraintY = NSLayoutConstraint(item: individualButton312, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 30)
        
        // add all constraints
        view.addConstraints([individualButton312ConstraintX, individualButton312ConstraintY])
        
        
        
        number12 = UIImageView(image: UIImage(named: "12 Number"))
        number12.frame = CGRectMake(160, 100, 20, 35)
        view.addSubview(number12)
        
        number12.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let number12ConstraintX = NSLayoutConstraint(item: number12, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: -130)
        
        // center y
        let number12ConstraintY = NSLayoutConstraint(item: number12, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: -50)
        
        // add all constraints
        view.addConstraints([number12ConstraintX, number12ConstraintY])

        

        
        
        imageView12.hidden = false
        imageView412.hidden = false
        imageView512.hidden = false
        individualButton112.hidden = false
        individualButton212.hidden = false
        individualButton312.hidden = false
        number12.hidden = false

    }
    
    func levelAction (sender: UIButton!) {
        var whiteImageView: UIImageView!
        whiteImageView = UIImageView(image: UIImage(named: "background image"))
        whiteImageView.backgroundColor = UIColor.whiteColor()
        whiteImageView.frame = CGRectMake(0, 0, 667, 375)
        view.addSubview(whiteImageView)
        
        var imageView: UIImageView!
        imageView = UIImageView(image: UIImage(named: "Game Face.png"))
        imageView.frame = CGRectMake(0, 0, 667, 375)
        view.addSubview(imageView)
        
        var moneyImageView: UIImageView!
        moneyImageView = UIImageView(image: UIImage(named: "Money Tab"))
        moneyImageView.frame = CGRectMake(230, 0, 207, 70)
        view.addSubview(moneyImageView)
    }
    
    func tappedView(){
        
        lvl1button.userInteractionEnabled = true
        lvl2button.userInteractionEnabled = true
        lvl3button.userInteractionEnabled = true
        lvl4button.userInteractionEnabled = true
        lvl5button.userInteractionEnabled = true
        lvl6button.userInteractionEnabled = true
        lvl7button.userInteractionEnabled = true
        lvl8button.userInteractionEnabled = true
        lvl9button.userInteractionEnabled = true
        lvl10button.userInteractionEnabled = true
        lvl11button.userInteractionEnabled = true
        lvl12button.userInteractionEnabled = true
        
        //hide the individual level selectors
        if imageView1 !== nil {
        imageView1.hidden = true
        imageView41.hidden = true
        imageView51.hidden = true
        individualButton11.hidden = true
        individualButton21.hidden = true
        individualButton31.hidden = true
        number1.hidden = true
        }
        if imageView2 !== nil {
        imageView2.hidden = true
        imageView42.hidden = true
        imageView52.hidden = true
        individualButton12.hidden = true
        individualButton22.hidden = true
        individualButton32.hidden = true
        number2.hidden = true
        }
        if imageView3 !== nil {
        imageView3.hidden = true
        imageView43.hidden = true
        imageView53.hidden = true
        individualButton13.hidden = true
        individualButton23.hidden = true
        individualButton33.hidden = true
        number3.hidden = true
        }
        if imageView4 !== nil {
        imageView4.hidden = true
        imageView44.hidden = true
        imageView54.hidden = true
        individualButton14.hidden = true
        individualButton24.hidden = true
        individualButton34.hidden = true
        number4.hidden = true
        }
        if imageView5 !== nil {
        imageView5.hidden = true
        imageView45.hidden = true
        imageView55.hidden = true
        individualButton15.hidden = true
        individualButton25.hidden = true
        individualButton35.hidden = true
        number5.hidden = true
        }
        if imageView6 !== nil {
        imageView6.hidden = true
        imageView46.hidden = true
        imageView56.hidden = true
        individualButton16.hidden = true
        individualButton26.hidden = true
        individualButton36.hidden = true
        number6.hidden = true
        }
        if imageView7 !== nil {
        imageView7.hidden = true
        imageView47.hidden = true
        imageView57.hidden = true
        individualButton17.hidden = true
        individualButton27.hidden = true
        individualButton37.hidden = true
        number7.hidden = true
        }
        if imageView8 !== nil {
        imageView8.hidden = true
        imageView48.hidden = true
        imageView58.hidden = true
        individualButton18.hidden = true
        individualButton28.hidden = true
        individualButton38.hidden = true
        number8.hidden = true
        }
        if imageView9 !== nil {
        imageView9.hidden = true
        imageView49.hidden = true
        imageView59.hidden = true
        individualButton19.hidden = true
        individualButton29.hidden = true
        individualButton39.hidden = true
        number9.hidden = true
        }
        if imageView10 !== nil {
        imageView10.hidden = true
        imageView410.hidden = true
        imageView510.hidden = true
        individualButton110.hidden = true
        individualButton210.hidden = true
        individualButton310.hidden = true
        number10.hidden = true
        }
        if imageView11 !== nil {
        imageView11.hidden = true
        imageView411.hidden = true
        imageView511.hidden = true
        individualButton111.hidden = true
        individualButton211.hidden = true
        individualButton311.hidden = true
        number11.hidden = true
        }
        if imageView12 !== nil {
        imageView12.hidden = true
        imageView412.hidden = true
        imageView512.hidden = true
        individualButton112.hidden = true
        individualButton212.hidden = true
        individualButton312.hidden = true
        number12.hidden = true
        }
        
    }

    
    
    func levelActionCoreAnimator (sender: UIButton!) {
        
        self.performSegueWithIdentifier("segue", sender: nil)        
    }
    
    
    func levelAction1 (sender: UIButton!) {
        var imageView: UIImageView!
        imageView = UIImageView(image: UIImage(named: "Game Screen I.png"))
        imageView.frame = CGRectMake(0, 0, 667, 375)
        view.addSubview(imageView)
        
        
        imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageViewConstraintX = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageViewConstraintY = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageViewConstraintX, imageViewConstraintY])
        
    }
    func levelAction12 (sender: UIButton!) {
        var imageView: UIImageView!
        imageView = UIImageView(image: UIImage(named: "Game Screen II w. Alterations A.png"))
        imageView.frame = CGRectMake(0, 0, 667, 375)
        view.addSubview(imageView)
        
        
        
        
        
        
        
        
        
        imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageViewConstraintX = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageViewConstraintY = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageViewConstraintX, imageViewConstraintY])

        
    }
    func levelAction13 (sender: UIButton!) {
        var imageView: UIImageView!
        imageView = UIImageView(image: UIImage(named: "Game Screen II w. Alterations B.png"))
        imageView.frame = CGRectMake(0, 0, 667, 375)
        view.addSubview(imageView)
        
        
        
        
        
        
        
        
        imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Center x
        let imageViewConstraintX = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterXWithinMargins, multiplier: 1.0, constant: 0)
        
        // center y
        let imageViewConstraintY = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1.0, constant: 0)
        
        // add all constraints
        view.addConstraints([imageViewConstraintX, imageViewConstraintY])

        
    }


    func storeTabFunc () {
        


//        var imageView = UIImageView(image: UIImage(named: "Store Tab.png"))
//        storeScrollView = UIScrollView(frame: view.bounds)
//        //storeScrollView.contentSize.width = storeScrollView.frame.size.width + 1
//        storeScrollView.contentSize.height = storeScrollView.frame.size.height
//        storeScrollView.setContentOffset(CGPoint(x: 530, y: 0), animated: false)
//        storeScrollView.addSubview(imageView)
//        view.addSubview(storeScrollView)
//    
//        
//        storeScrollView.bounces = false
//        storeScrollView.showsHorizontalScrollIndicator = false
        
        storeTab = UIImageView(image: UIImage(named: "Store Tab"))
        storeTab.frame = CGRect(x: -530, y: 0, width: storeTab.frame.size.width, height: storeTab.frame.size.height)
        view.addSubview(storeTab)
        
        var cashPanel = UIImageView(image: UIImage(named: "Cash Panel.png"))
        cashPanel.frame = CGRect(x: 10, y: 12, width: cashPanel.frame.size.width, height: cashPanel.frame.size.height)
        storeTab.addSubview(cashPanel)
        
        cashPanelFunction()
        
        var leaderboardPanelButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        let leaderboardImage = UIImage(named: "Leaderboard Panel.png") as UIImage!
        leaderboardPanelButton.frame = CGRectMake(244, 12, leaderboardImage.size.height, leaderboardImage.size.height)
        leaderboardPanelButton.setImage(leaderboardImage, forState: .Normal)
        leaderboardPanelButton.addTarget(self, action: "leaderboardAction:", forControlEvents: UIControlEvents.TouchUpInside)
        storeTab.addSubview(leaderboardPanelButton)
        var leaderboardPanelImage = UIImageView(image: UIImage(named: "Leaderboard Panel.png"))
        leaderboardPanelImage.frame = CGRect(x: 244, y: 12, width: leaderboardPanelImage.frame.size.width, height: leaderboardPanelImage.frame.size.height)
        storeTab.addSubview(leaderboardPanelImage)
        
        var newspaperPanelButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        let newspaperImage = UIImage(named: "Newspaper Panel.png") as UIImage!
        newspaperPanelButton.frame = CGRectMake(366, 12, newspaperImage.size.height, newspaperImage.size.height)
        newspaperPanelButton.setImage(newspaperImage, forState: .Normal)
        newspaperPanelButton.addTarget(self, action: "newspaperAction:", forControlEvents: UIControlEvents.TouchUpInside)
        storeTab.addSubview(newspaperPanelButton)
        
        var newspaperPanelImage = UIImageView(image: UIImage(named: "Newspaper Panel.png"))
        newspaperPanelImage.frame = CGRect(x: 366, y: 12, width: newspaperPanelImage.frame.size.width, height: newspaperPanelImage.frame.size.height)
        storeTab.addSubview(newspaperPanelImage)
        
        investmentsStore()
        
        var shovelButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        let shovelButtonImage = UIImage(named: "Shovel.png") as UIImage!
        shovelButton.frame = CGRectMake(5.5, 110, shovelButtonImage.size.width, shovelButtonImage.size.height)
        shovelButton.setBackgroundImage(shovelButtonImage, forState: .Normal)
        shovelButton.addTarget(self, action: "shovelAction:", forControlEvents: UIControlEvents.TouchUpInside)
        storeTab.addSubview(shovelButton)
        
        var goldButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        let goldImage = UIImage(named: "Gold.png") as UIImage!
        goldButton.frame = CGRectMake(264, 110, goldImage.size.width, goldImage.size.height)
        goldButton.setBackgroundImage(goldImage, forState: .Normal)
        goldButton.addTarget(self, action: "goldAction:", forControlEvents: UIControlEvents.TouchUpInside)
        storeTab.addSubview(goldButton)

        
        
        storeTab.userInteractionEnabled = true
        
        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        
        storeTab.addGestureRecognizer(leftSwipe)
        storeTab.addGestureRecognizer(rightSwipe)
        
        swipe = "right"
    }
    
    

    func handleSwipes(sender:UISwipeGestureRecognizer) {
        if (sender.direction == .Left) {
            println("Swipe Left")
            if swipe == "left" {
                swipe = "right"
                UIImageView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 15, options: nil, animations: { () -> Void in
                    //storeTab.frame = CGRect(x: -530, y: 0, width: storeTab.frame.size.width, height: storeTab.frame.size.height)
                    
                    var storeTabFrame = self.storeTab.frame
                    storeTabFrame.origin.x -= (storeTabFrame.size.width - 45)
                    
                    self.storeTab.frame = storeTabFrame
                    
                    }, completion: nil)

            }
            
            
            
        }
        
        if (sender.direction == .Right) {
            println("Swipe Right")
            if swipe == "right" {
                swipe = "left"
                UIImageView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 15, options: nil, animations: { () -> Void in
                    
                    var storeTabFrame = self.storeTab.frame
                    storeTabFrame.origin.x += (storeTabFrame.size.width - 45)
                    
                    self.storeTab.frame = storeTabFrame
                    
                    }, completion: nil)

            }
            

            
        }
    }
    
    func leaderboardAction (sender: UIButton!) {
        println("leaderboard pressed")
        self.performSegueWithIdentifier("leaderboardSegue", sender: nil)
    }
    
    func newspaperAction (sender: UIButton!) {
        println("newspaper pressed")
    }
    
    func cashPanelFunction () {
        var moneyLabel = UILabel(frame: CGRectMake(0, 0, 300, 300))
        moneyLabel.center = CGPointMake(150, 40)
        moneyLabel.textAlignment = NSTextAlignment.Center
        moneyLabel.text = "$\(tempMoney)"
        moneyLabel.font = UIFont(name: "Phosphate-Solid", size: 50)
        moneyLabel.textColor = UIColor(red: 0.37, green: 0.74, blue: 0.28, alpha: 1.0)

        storeTab.addSubview(moneyLabel)
        
    }
    
    func investmentsStore () {
        var background = UIImageView(image: UIImage(named: "Store Investment Background.png"))
        background.frame = CGRect(x: 4, y: 120, width: background.frame.size.width, height: background.frame.size.height)
        storeTab.addSubview(background)
        
        
        var shantyTown = UIImageView(image: UIImage(named: "Shanty Town Investment .png"))
        var investmentScrollView: UIScrollView!
        
        investmentScrollView = UIScrollView(frame: CGRect(x: 30, y: 170, width: (4 * shantyTown.frame.size.width) + 60, height: (2 * shantyTown.frame.size.height) + 20))
        
        storeTab.addSubview(investmentScrollView)
        investmentScrollView.contentSize.height = scrollView.frame.size.height
        investmentScrollView.bounces = false
        investmentScrollView.showsVerticalScrollIndicator = false
        
        
        shantyTown.frame = CGRect(x: 0, y: 0, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(shantyTown)
        var illegalFishing = UIImageView(image: UIImage(named: "Illegal Fishing Investment.png"))
        illegalFishing.frame = CGRect(x: shantyTown.frame.size.width + 20, y: 0, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(illegalFishing)
        var clearForest = UIImageView(image: UIImage(named: "Clear Forest Investment.png"))
        clearForest.frame = CGRect(x: (2 * shantyTown.frame.size.width) + 40, y: 0, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(clearForest)
        var sugarPlantation = UIImageView(image: UIImage(named: "Sugar Plantation Investment.png"))
        sugarPlantation.frame = CGRect(x: (3 * shantyTown.frame.size.width) + 60, y: 0, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(sugarPlantation)
        var solarPower = UIImageView(image: UIImage(named: "Solar Power Investment.png"))
        solarPower.frame = CGRect(x: 0, y: shantyTown.frame.size.height + 10, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(solarPower)
        var treeFarm = UIImageView(image: UIImage(named: "Tree Farm Investment.png"))
        treeFarm.frame = CGRect(x: shantyTown.frame.size.width + 20, y: shantyTown.frame.size.height + 10, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(treeFarm)
        var beachTown = UIImageView(image: UIImage(named: "Beach Twon Investment.png"))
        beachTown.frame = CGRect(x: (2 * shantyTown.frame.size.width) + 40, y: shantyTown.frame.size.height + 10, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(beachTown)
        var windPower = UIImageView(image: UIImage(named: "Wind Power Investment.png"))
        windPower.frame = CGRect(x: (3 * shantyTown.frame.size.width) + 60, y: shantyTown.frame.size.height + 10, width: shantyTown.frame.size.width, height: shantyTown.frame.size.height)
        investmentScrollView.addSubview(windPower)

        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

