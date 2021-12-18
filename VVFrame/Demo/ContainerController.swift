//
//  ContainerController.swift
//  VVFrameDemo
//
//  Created by 赵江明 on 2021/12/19.
//


import UIKit
import VVFrame

class ContainerController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor  = .white
        
        let view1 = UILabel()
        view1.text = "Very"
        view1.backgroundColor = .green
        view1.textColor = .white
        view1.numberOfLines = 0
        self.view.addSubview(view1)
    
        let view2 = UILabel()
        view2.backgroundColor = .red
        view2.textColor = .white
        view2.text = "often"
        view2.numberOfLines = 0
        self.view.addSubview(view2)
        
        let view3 = UILabel()
        view3.backgroundColor = .blue
        view3.textColor = .white
        view3.text = "you"
        view3.numberOfLines = 0
        self.view.addSubview(view3)
        
        [view1,view2,view3].configure(container: view, relation: .horizontal(20,20)) {
            view1.makeFrame { maker in
                maker.top(100)
                maker.left(10)
                maker.sizeToFit()
            }
            
            view2.makeFrame { maker in
                maker.top(150)
                maker.left(100)
                maker.sizeToFit()
            }
            
            view3.makeFrame { maker in
                maker.top(200)
                maker.left(200)
                maker.sizeToFit()
            }
        }
    }
}

