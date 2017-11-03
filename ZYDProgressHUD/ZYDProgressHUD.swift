//
//  ZYDProgressHUD
//  ZYDProgressHUD
//
//  Created by zhangyu on 2017/10/24.
//  Copyright © 2017年 zhangyu. All rights reserved.
//

import UIKit

class ZYDProgressHUD: UIView {
  
    class func showHUDToView(toView view: UIView, animated: Bool) -> ZYDProgressHUD {
        
        let hud = ZYDProgressHUD()
        
        hud.backgroundColor = UIColor.red
        
        hud.frame = view.bounds
        
        return ZYDProgressHUD()
        
    }
    
}
