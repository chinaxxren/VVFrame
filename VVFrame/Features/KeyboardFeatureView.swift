//
//  Copyright © 2020 Rosberry. All rights reserved.
//

import UIKit
import VVFrame

final class KeyboardFeatureView: FeatureView {

    // MARK: - Subviews

    private lazy var textField: UITextField = {
        let view = UITextField()
        view.delegate = self
        view.borderStyle = .roundedRect
        return view
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        listenForKeyboardEvents()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        stopListeningForKeyboardEvents()
    }

    override func performAddSubviews() {
        super.performAddSubviews()
        addSubview(textField)
    }

    override func performLayout() {
        textField.makeFrame { maker in
            if vv_keyboard.isVisible {
                maker.bottom(to: vv_keyboard.top)
            }
            else {
                maker.top(to: purpleView.vv_bottom)
            }
            maker.size(width: bounds.width - 30, height: 50).centerX()
        }

        greenView.makeFrame { maker in
            maker.left(to: textField.vv_left, inset: 16)
                .bottom(to: textField.vv_top, inset: 16)
                .top(to: purpleView.vv_top, inset: 16)
                .right(to: textField.vv_centerX)
        }

        pinkView.makeFrame { maker in
            maker.left(to: textField.vv_centerX)
                .bottom(to: textField.vv_top, inset: 16)
                .top(to: purpleView.vv_top, inset: 16)
                .right(to: textField.vv_right, inset: 16)
        }
    }
}

// MARK: - UITextFieldDelegate

extension KeyboardFeatureView: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
    }
}
