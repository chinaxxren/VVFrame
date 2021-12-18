//
//  SafeAreaController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/18.
//


import UIKit
import VVFrame

class SafeAreaController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        let content = UIView()
        content.backgroundColor = .green
        self.view.addSubview(content)
        
        content.makeFrame { maker in
            maker.top(view.vv_safeArea.top)
            maker.bottom(view.vv_safeArea.bottom)
            maker.right(view.vv_safeArea.right, 10)
            maker.left(view.vv_safeArea.left, 10)
        }
    }
}

