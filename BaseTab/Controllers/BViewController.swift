//
//  BViewController.swift
//  BaseTab
//
//  Created by Sophie Zhou on 11/22/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    var count: Int = 0
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Counter"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter.text = String(count)
        counter.font = UIFont.systemFont(ofSize: 44.0)
        counter.sizeToFit()
        counter.textAlignment = .center
        
        plus.setTitle("+", for: .normal)
        plus.setTitleColor(UIColor(red: 126/255, green: 211/255, blue: 33/255, alpha: 1.0), for: .normal)
        plus.titleLabel?.font = UIFont.systemFont(ofSize: 44.0)
        plus.sizeToFit()
        plus.addTarget(self, action: #selector(increment), for: .touchUpInside)
        
        minus.setTitle("-", for: .normal)
        minus.setTitleColor(UIColor(red: 126/255, green: 211/255, blue: 33/255, alpha: 1.0), for: .normal)
        minus.titleLabel?.font = UIFont.systemFont(ofSize: 44.0)
        minus.sizeToFit()
        minus.addTarget(self, action: #selector(decrement), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        counter.frame = CGRect(x: self.view.bounds.origin.x, y: 144, width: self.view.bounds.size.width, height: counter.frame.height)
        
        plus.frame.origin = CGPoint(x: self.view.bounds.width/4*3 - plus.frame.width, y: counter.frame.origin.y + 100)
        
        minus.frame.origin = CGPoint(x: self.view.bounds.width/4, y: counter.frame.origin.y + 100)
    }
    
    @objc func increment() {
        self.count += 1
        counter.text = String(self.count)
    }
    @objc func decrement() {
        self.count -= 1
        counter.text = String(self.count)
    }
}
