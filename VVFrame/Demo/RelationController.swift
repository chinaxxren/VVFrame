//
//  RelationController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/19.
//


import UIKit
import VVFrame

class RelationController : UIViewController {
    lazy var bgView:UIView =  {
        let bgView = UIView()
        bgView.backgroundColor = .red
        return bgView
    }()
    
    lazy var view1:UIView = {
        let view1 = UIView()
        view1.backgroundColor = .green
        return view1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
    
        view.addSubview(bgView)
        bgView.addSubview(view1)
        
        
        bgView.makeFrame { maker in
            maker.center()
            maker.size(100, 100)
        }
        
        test1()
    }
    
    func test1() {
        view1.makeFrame { maker in
            maker.centerX(self.bgView.vv_right)
            maker.centerY(self.view1.vv_top)
            maker.size(50, 50)
        }
    }
    
}

