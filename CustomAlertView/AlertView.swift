//
//  AlertView.swift
//  CustomAlertView
//
//  Created by Yuhsuan on 03/02/2017.
//  Copyright © 2017 cgua. All rights reserved.
//

import UIKit

enum BUTTON_COUNT {
    case ONE,TWO
}

class AlertView: UIView {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(frame: CGRect, alertText: String, button_count: BUTTON_COUNT, button_text: [String], action_name: [String], target: Any?) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.black
        
        let alertTextView = UITextView(frame: CGRect(x: 20, y: 20, width: frame.width - 40, height: (frame.height / 4) * 3 - 40))
        alertTextView.text = alertText
        alertTextView.textColor = UIColor.white
        alertTextView.backgroundColor = UIColor.orange
        alertTextView.font = UIFont(name: "Heiti SC", size: CGFloat(18))
        alertTextView.isScrollEnabled = true
        alertTextView.contentSize = CGSize(width: alertTextView.frame.width, height: alertTextView.frame.height)
        
        self.addSubview(alertTextView)
        
        switch button_count {
        
        case .ONE:
            
            let button = UIButton(frame: CGRect(x: 0, y: (frame.height / 4) * 3, width: frame.width, height: frame.height / 4))
            
            button.setTitle(button_text[0], for: .normal) // 設定 title 內容
            button.setTitleColor(UIColor.black, for: .normal) //設定 title 顏色
            button.backgroundColor = UIColor.gray //設定背景
            button.titleLabel?.font = UIFont(name: "Heiti SC", size: CGFloat(14)) //設定字型與大小
            button.addTarget(target, action: Selector(action_name[0]), for: .touchUpInside)
            
            self.addSubview(button)
            
            break
            
        case .TWO:
            
            let button = UIButton(frame: CGRect(x: 0, y: (frame.height / 4) * 3, width: frame.width / 2, height: frame.height / 4))
            
            button.setTitle(button_text[0], for: .normal)
            button.setTitleColor(UIColor.black, for: .normal)
            button.backgroundColor = UIColor.gray
            button.titleLabel?.font = UIFont(name: "Heiti SC", size: CGFloat(14))
            button.addTarget(target, action: Selector(action_name[0]), for: .touchUpInside)
            
            self.addSubview(button)
            
            let button_2 = UIButton(frame: CGRect(x: frame.width / 2, y: (frame.height / 4) * 3, width: frame.width / 2, height: frame.height / 4))
            
            button_2.setTitle(button_text[1], for: .normal)
            button_2.setTitleColor(UIColor.black, for: .normal)
            button_2.backgroundColor = UIColor.gray
            button_2.titleLabel?.font = UIFont(name: "Heiti SC", size: CGFloat(14))
            button_2.addTarget(target, action: Selector(action_name[1]), for: .touchUpInside)
            
            self.addSubview(button_2)
            
            break
        
        
        }
        
        
    }
    
    init(frame: CGRect, Font: UIFont, alertText: String,alertlbl_bgColor: UIColor, alertlbl_txtColor: UIColor, button_count: BUTTON_COUNT, button_text: [String], button_bgColor: UIColor, button_txtColor: UIColor, action_name: [String], target: Any?) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.black
        
        let alertTextView = UITextView(frame: CGRect(x: 20, y: 20, width: frame.width - 40, height: (frame.height / 4) * 3 - 40))
        alertTextView.text = alertText
        alertTextView.textColor = alertlbl_txtColor
        alertTextView.backgroundColor = alertlbl_bgColor
        alertTextView.font = UIFont(name: "Heiti SC", size: CGFloat(18))
        alertTextView.isScrollEnabled = true
        alertTextView.contentSize = CGSize(width: alertTextView.frame.width, height: alertTextView.frame.height)
        
        self.addSubview(alertTextView)
        
        switch button_count {
            
        case .ONE:
            
            let button = UIButton(frame: CGRect(x: 0, y: (frame.height / 4) * 3, width: frame.width, height: frame.height / 4))
            
            button.setTitle(button_text[0], for: .normal) // 設定 title 內容
            button.setTitleColor(button_txtColor, for: .normal) //設定 title 顏色
            button.backgroundColor = button_bgColor //設定背景
            button.titleLabel?.font = Font //設定字型與大小
            button.addTarget(target, action: Selector(action_name[0]), for: .touchUpInside)
            
            self.addSubview(button)
            
            break
            
        case .TWO:
            
            let button = UIButton(frame: CGRect(x: 0, y: (frame.height / 4) * 3, width: frame.width / 2, height: frame.height / 4))
            
            button.setTitle(button_text[0], for: .normal)
            button.setTitleColor(button_txtColor, for: .normal)
            button.backgroundColor = button_bgColor
            button.titleLabel?.font = Font
            button.addTarget(target, action: Selector(action_name[0]), for: .touchUpInside)
            
            self.addSubview(button)
            
            let button_2 = UIButton(frame: CGRect(x: frame.width / 2, y: (frame.height / 4) * 3, width: frame.width / 2, height: frame.height / 4))
            
            button_2.setTitle(button_text[1], for: .normal)
            button_2.setTitleColor(button_txtColor, for: .normal)
            button_2.backgroundColor = button_bgColor
            button_2.titleLabel?.font = Font
            button_2.addTarget(target, action: Selector(action_name[1]), for: .touchUpInside)
            
            self.addSubview(button_2)
            
            break
            
            
        }
        
    }
    
}
