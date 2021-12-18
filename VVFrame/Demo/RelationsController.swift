//
//  RelationsController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/18.
//

import UIKit
import VVFrame

class RelationsController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        let view1 = UIView()
        view1.backgroundColor = .green
        self.view.addSubview(view1)
        
        
        let view2 = UIView()
        view2.backgroundColor = .red
        self.view.addSubview(view2)
        
        view1.makeFrame { maker in
            maker.center()
            maker.size(100, 100)
        }
        
        view2.makeFrame { maker in
            maker.size(30, 30)
            maker.left(view1.vv_right,5)
            maker.bottom(view1.vv_centerY)
        }
    }
}
