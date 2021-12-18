//
//  Copyright © 2020 Rosberry. All rights reserved.
//

import UIKit

final class SideRelationFeatureView: FeatureView {

    // MARK: - Lifecycle

    override func performLayout() {
        greenView.makeFrame { maker in
            maker.bottom(to: purpleView.vv_top, inset: 20)
                .top()
                .left(to: purpleView.vv_left)
                .right(to: purpleView.vv_centerX)
        }

        pinkView.makeFrame { maker in
            maker.top(to: purpleView.vv_bottom, inset: 20)
                .left(to: greenView.vv_right)
                .right(to: purpleView.vv_right)
                .bottom()
        }
    }
}
