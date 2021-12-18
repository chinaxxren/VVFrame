//
//  MultiplierController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/18.
//

import Foundation
import UIKit
import VVFrame

class MultiplierController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        let view1 = UIView()
        view1.backgroundColor = .red
        self.view.addSubview(view1)
        
        
        let view2 = UIView()
        view2.backgroundColor = .green
        self.view.addSubview(view2)
        
        view1.makeFrame { maker in
            maker.center()
            maker.size(100, 100)
        }
        
        view2.makeFrame { maker in
            maker.top(view1.vv_bottom,40);
            maker.left(view1.vv_left);
            maker.height(view1.vv_height);
            maker.width(view1.vv_width, 0.5)
        }
    }
}
