//
//  TextSizeController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/19.
//

import UIKit
import VVFrame

class TextSizeController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        let view1 = UILabel()
//        view1.text = "Very often you should"
        view1.text = "Very often you should configure labels, so there are some methods for comfortable work with them."
        view1.backgroundColor = .green
        view1.textColor = .white
        view1.numberOfLines = 0
        self.view.addSubview(view1)
        
        
        let view2 = UILabel()
        view2.backgroundColor = .red
        view2.textColor = .white
        view2.text = "Very often"
//        view2.text = "Very often you should configure labels, so there are some methods for comfortable work with them."
        view2.numberOfLines = 0
        self.view.addSubview(view2)
        
        let view3 = UILabel()
        view3.backgroundColor = .blue
        view3.textColor = .white
        view3.text = "Very often you should configure labels, so there are some methods for comfortable work with them."
        view3.numberOfLines = 0
        self.view.addSubview(view3)
        
        view1.makeFrame { maker in
            maker.top(100)
            maker.centerX()
            maker.sizeToFit()
        }
        
        view2.makeFrame { maker in
            maker.top(150)
            maker.centerX()
            maker.height(30)
            maker.widthThatFits(200)
        }
        
        view3.makeFrame { maker in
            maker.top(200)
            maker.centerX()
//            maker.sizeThatFits(CGSize(width: 150, height: CGFloat.greatestFiniteMagnitude))
            maker.sizeThatFits(150,CGFloat.greatestFiniteMagnitude)
        }
    }
}
