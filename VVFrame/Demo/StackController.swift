//
//  StackController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/19.
//


import UIKit
import VVFrame

class StackController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        let stackView = UIView()
        stackView.backgroundColor = .gray
        view.addSubview(stackView)
        
        let view1 = UILabel()
        view1.text = "Very"
        view1.backgroundColor = .green
        view1.textColor = .white
        view1.numberOfLines = 0
        stackView.addSubview(view1)
    
        let view2 = UILabel()
        view2.backgroundColor = .red
        view2.textColor = .white
        view2.text = "often"
        view2.numberOfLines = 0
        stackView.addSubview(view2)
        
        let view3 = UILabel()
        view3.backgroundColor = .blue
        view3.textColor = .white
        view3.text = "you"
        view3.numberOfLines = 0
        stackView.addSubview(view3)
        
        stackView.makeFrame { maker in
            maker.top(100).left().right().height(30)
        }
        [view3, view2, view1].stack(axis: .horizontal, spacing: 10)

    }
}


