//
//  SafeAreaController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/18.
//


import UIKit
import VVFrame

class SafeAreaController : UIViewController {
    
    let content = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        
        content.backgroundColor = .green
        self.view.addSubview(content)
        
//        content.makeFrame { maker in
//            guard let view = view else {
//                return
//            }
//
//            maker.top(view.vv_safeArea.top,20)
//            maker.bottom(view.vv_safeArea.bottom,20)
//            maker.right(view.vv_safeArea.right, 10)
//            maker.left(view.vv_safeArea.left, 10)
//        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        content.makeFrame { maker in
//            maker.safeAreaTop()
//            maker.safeAreaLeft()
//            maker.safeAreaRight()
//            maker.safeAreaBottom()
//        }
        
        content.makeFrame { maker in
            maker.safeArea()
        }
    }
}

