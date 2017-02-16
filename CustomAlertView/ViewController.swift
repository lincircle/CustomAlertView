//
//  ViewController.swift
//  CustomAlertView
//
//  Created by Yuhsuan on 03/02/2017.
//  Copyright © 2017 cgua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alert_view: AlertView!
    
    var blurEffectView: UIVisualEffectView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffect = UIBlurEffect(style: .dark)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        
        alert_view = AlertView(frame: CGRect(x: self.view.frame.width / 4 - 20, y: self.view.frame.height / 3, width: self.view.frame.width / 2 + 40, height: self.view.frame.height / 2), alertText: "test hello , lin", button_count: .TWO, button_text: ["ok","cancel"], action_name: ["ok","cancel"], target: self)
        
        self.view.addSubview(blurEffectView)
        self.view.addSubview(alert_view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func ok() {
        
        print("ok")
    }

    
    func cancel() {
        
        print("cancel")
    }
}

