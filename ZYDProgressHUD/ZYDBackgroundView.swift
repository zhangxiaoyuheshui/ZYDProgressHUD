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


class ZYDBackgroundView: UIView {

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
            setupView()
        default:
            setupIndeterminateView()
        }
    }
    
    private func setupIndeterminateView() {
        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        indicator.color = UIColor.blue
        indicator.center = center
        addSubview(indicator)
        indicator.startAnimating()
    }
    
    private func setupTextView() {
        
    }
}
