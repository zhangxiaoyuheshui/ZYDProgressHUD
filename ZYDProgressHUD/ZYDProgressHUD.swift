//
//  ZYDProgressHUD
//  ZYDProgressHUD
//
//  Created by zhangyu on 2017/10/24.
//  Copyright © 2017年 zhangyu. All rights reserved.
//

import UIKit

class ZYDProgressHUD: UIView {
  
    var hud_Height: CGFloat = 0.0
    var hud_Width: CGFloat = 0.0
    // 默认值
    public var progressHUDMode: ZYDProgressHUDMode! {
        didSet {
            guard let mode = progressHUDMode else {
                return
            }
            switch mode {
            case .indeterminate:
                loadIndeterminateView(mode)
            case .text:
                loadTextView(mode)
            }
        }
    }
    
    public class func showHUDToView(toView view: UIView, animated: Bool) -> ZYDProgressHUD {
        
        let hud = ZYDProgressHUD(frame: view.bounds)
        
        hud.backgroundColor = UIColor.red
        
        hud.frame = view.bounds
        
        return hud
        
    }
    
    
    deinit {
        print("ZYDProgressHUD -- deinit!")
    }
    
}
extension ZYDProgressHUD {
    
    fileprivate func loadIndeterminateView(_ mode: ZYDProgressHUDMode) {
        let view = ZYDBackgroundView.backgroundView(mode, CGRect(x: 0, y: 0, width: 70, height: 70))
        view.backgroundColor = UIColor(white: 0.8, alpha: 0.6)
        view.layer.cornerRadius = 5.0
        view.center = center
        addSubview(view)
    }
    
    fileprivate func loadTextView(_ mode: ZYDProgressHUDMode) {
        
    }
}

