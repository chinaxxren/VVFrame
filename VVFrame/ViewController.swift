//
//  ViewController.swift
//  VVFrame
//
//  Created by 赵江明 on 2021/12/17.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Subviews

    private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.text =  "aaaa"
        view.numberOfLines = 0
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            view.backgroundColor = .systemBackground
        } else {
            view.backgroundColor = .white
        }
        view.addSubview(descriptionLabel)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        descriptionLabel.makeFrame { maker in
            maker.left(inset: 16).right(inset: 16).top(to: view.vv_safeArea.top, inset: 30).height(50)
        }
    }
}

