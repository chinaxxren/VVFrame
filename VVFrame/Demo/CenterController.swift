//
//  CenterController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/19.
//


import UIKit
import VVFrame

class CenterController : UIViewController {
    
    let content = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        
        content.backgroundColor = .green
        self.view.addSubview(content)
        
        test3()
    }
    
    func test1() {
        content.makeFrame { maker in
            maker.centerX().and.centerY()
            maker.size(100, 100)
        }
    }
    
    func test2() {
        content.makeFrame { maker in
            maker.center()
            maker.size(100, 100)
        }
    }
    
    func test3() {
        content.makeFrame { maker in
            maker.setCenterX(100)
            maker.setCenterY(50)
            maker.size(100, 100)
        }
    }
}


