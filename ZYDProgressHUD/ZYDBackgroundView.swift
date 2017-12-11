//
//  ZYDBackgroundView.swift
//  ZYDProgressHUDDemo
//
//  Created by zhangyu on 2017/11/3.
//  Copyright © 2017年 zhangyu. All rights reserved.
//

import UIKit

public enum ZYDProgressHUDMode : Int {
    case indeterminate
    case text
}


public class ZYDBackgroundView: UIView {

    public var mode: ZYDProgressHUDMode!
    
    public class func backgroundView(_ mode: ZYDProgressHUDMode, _ frame: CGRect) -> ZYDBackgroundView {
        
        return ZYDBackgroundView(mode: mode, frame: frame)
    }
    
    convenience init(mode: ZYDProgressHUDMode, frame: CGRect) {
        self.init(frame: frame)
        self.mode = mode
        setupView()
    }
    
    private func setupView() {
        
        switch mode {
        case .indeterminate:
            setupIndeterminateView()
        case .text:
            setupTextView()
        default:
            setupIndeterminateView()
        }
    }
    
    private func setupIndeterminateView() {
        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        indicator.color = UIColor.black
        indicator.center = center
        addSubview(indicator)
        indicator.startAnimating()
    }
    
    private func setupTextView() {
        
        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        indicator.color = UIColor.black
        let centerX = center.x
        let centerY = center.y - 10
        indicator.center = CGPoint(x: centerX, y: centerY)
        addSubview(indicator)
        indicator.startAnimating()

        let textLabel = UILabel()
        textLabel.text = "loading..."
        textLabel.frame = CGRect(x: 0, y: frame.height - 30, width: frame.width, height: 30)
        textLabel.textAlignment = .center
        textLabel.font = UIFont.systemFont(ofSize: 14.0)
        textLabel.textColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1.0)
        addSubview(textLabel)
        
    }
    
    
}
