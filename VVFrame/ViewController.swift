//
//  Copyright © 2021 chinaxxren. All rights reserved.
//

import UIKit
import VVFrame

class ViewController: UIViewController {
    // MARK: - Subviews

    private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.text = "aaaa"
        view.numberOfLines = 0
        view.backgroundColor = .red
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
            maker.left(16).right(16).top(view.vv_safeArea.top, 30).height(50)
        }
    }
}

