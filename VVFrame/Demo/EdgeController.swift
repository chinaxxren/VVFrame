//
//  EdgeController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/18.
//

import UIKit
import VVFrame

class EdgeController : UIViewController {
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
            maker.size(200, 200)
        }
        
        test2()
    }
    
    
    func test1() {
        view1.makeFrame { maker in
            maker.edges(UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)) // UIEdgeInsets.zero - default
        }
    }
    
    func test2() {
        view1.makeFrame { maker in
            maker.edges(5, 5, 5, 5)
        }
    }
    
    func test3() {
        let insets: UIEdgeInsets = .init(top: 5, left: 10, bottom: 15, right: 20)
        view1.makeFrame { maker in
            maker.top(0)
            maker.bottom(0)
            maker.edges(insets,sides: [.left, .right])
        }
    }
    
    func test4() {
        let insets: UIEdgeInsets = .init(top: 5, left: 10, bottom: 15, right: 20)
        view1.makeFrame { maker in
            maker.top(0)
            maker.bottom(0)
            maker.edges(insets,sides: [.left, .right])
        }
    }
    
    func test5() {
        let insets: UIEdgeInsets = .init(top: 5, left: 10, bottom: 15, right: 20)
        view1.makeFrame { maker in
            maker.top(0)
            maker.bottom(0)
            maker.edges(insets,sides: .horizontal)
        }
    }
    
    func test6() {
        view1.makeFrame { maker in
            maker.top(5).and.bottom(5)
            maker.left(5).and.right(5)
        }
    }
    
    func test7() {
        view1.makeFrame { maker in
            maker.top().bottom(5)
            maker.left(0).right(5)
        }
    }
}

