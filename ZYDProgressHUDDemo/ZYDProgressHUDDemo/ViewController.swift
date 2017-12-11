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
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        hud.removeFromSuperview()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "indeterminate"
        case 1:
            cell.textLabel?.text = "text"
        default:
            cell.textLabel?.text = "indeterminate"
        }
        
        cell.textLabel?.textAlignment = .center
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    
        let vc = UIViewController()
        vc.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        hud = ZYDProgressHUD.showHUDToView(toView: vc.view, animated: true)

        
        switch indexPath.row {
        case 0:
            hud.progressHUDMode = .indeterminate
        case 1:
            hud.progressHUDMode = .text
        default:
            hud.progressHUDMode = .indeterminate
        }
        
        present(vc, animated: true) { [weak self] in
            vc.view.addSubview(self!.hud)
        }
        
    }
    
}

