//
//  CViewController.swift
//  BaseTab
//
//  Created by Sophie Zhou on 11/22/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class CViewController: UIViewController {

    @IBOutlet weak var box: UIView!
    @IBOutlet weak var up: UIButton!
    @IBOutlet weak var left: UIButton!
    @IBOutlet weak var right: UIButton!
    @IBOutlet weak var down: UIButton!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Move"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        up.addTarget(self, action: #selector(moveBox(sender:)), for: .touchUpInside)
        down.addTarget(self, action: #selector(moveBox(sender:)), for: .touchUpInside)
        left.addTarget(self, action: #selector(moveBox(sender:)), for: .touchUpInside)
        right.addTarget(self, action: #selector(moveBox(sender:)), for: .touchUpInside)
    }

    @objc func moveBox(sender: UIButton){
        if sender == up {
            box.frame.origin.y -= 20
        }
        else if sender == down {
            box.frame.origin.y += 20
        }
        else if sender == left {
            box.frame.origin.x -= 20
        }
        else if sender == right {
            box.frame.origin.x += 20
        }
    }
}
