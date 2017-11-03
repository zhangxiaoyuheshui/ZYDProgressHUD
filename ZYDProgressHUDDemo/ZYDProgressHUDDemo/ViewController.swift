//
//  ViewController.swift
//  ZYDProgressHUDDemo
//
//  Created by zhangyu on 2017/11/3.
//  Copyright © 2017年 zhangyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hud: ZYDProgressHUD!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hud = ZYDProgressHUD.showHUDToView(toView: view, animated: true)
        hud.progressHUDMode = .indeterminate
        view.addSubview(hud)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        hud.removeFromSuperview()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

