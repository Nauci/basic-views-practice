//
//  AViewController.swift
//  BaseTab
//
//  Created by Sophie Zhou on 11/22/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    let red = UILabel()
    let orange = UILabel()
    let yellow = UILabel()
    let green = UILabel()
    let blue = UILabel()
    let purple = UILabel()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Rainbow"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        red.text = "Red"
        orange.text = "Orange"
        yellow.text = "Yellow"
        green.text = "Green"
        blue.text = "Blue"
        purple.text = "Purple"
        
        red.textColor = UIColor.red
        orange.textColor = UIColor.orange
        yellow.textColor = UIColor.yellow
        green.textColor = UIColor.green
        blue.textColor = UIColor.blue
        purple.textColor = UIColor.purple
        
        red.sizeToFit()
        orange.sizeToFit()
        yellow.sizeToFit()
        green.sizeToFit()
        blue.sizeToFit()
        purple.sizeToFit()
        
        // padding to set the vertical space between all labels
        let padding: CGFloat = 11
        
        red.frame.origin = CGPoint(x: 10, y: 30)
        orange.frame.origin = CGPoint(x: red.frame.origin.x, y: red.frame.origin.y + red.frame.size.height + padding)
        yellow.frame.origin = CGPoint(x: red.frame.origin.x, y: orange.frame.origin.y + orange.frame.size.height + padding)
        green.frame.origin = CGPoint(x: red.frame.origin.x, y: yellow.frame.origin.y + yellow.frame.size.height + padding)
        blue.frame.origin = CGPoint(x: red.frame.origin.x, y: green.frame.origin.y + green.frame.size.height + padding)
        purple.frame.origin = CGPoint(x: red.frame.origin.x, y: blue.frame.origin.y + blue.frame.size.height + padding)
        
        self.view.addSubview(red)
        self.view.addSubview(orange)
        self.view.addSubview(yellow)
        self.view.addSubview(green)
        self.view.addSubview(blue)
        self.view.addSubview(purple)
    }
}
