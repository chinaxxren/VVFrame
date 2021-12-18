//
//  Copyright © 2021 chinaxxren. All rights reserved.
//

import Foundation

extension Maker {

    /// Calculates the width that best fits the specified size.
    ///
    /// - returns: `Maker` instance for chaining relations.

    @available(*, unavailable, renamed: "widthThatFits(maxWidth:)")
    @discardableResult public func widthThatFits(width: Number) -> Maker {
        return self
    }

    /// Calculates the height that best fits the specified size.
    ///
    /// - returns: `Maker` instance for chaining relations.

    @available(*, unavailable, renamed: "heightThatFits(maxHeight:)")
    @discardableResult public func heightThatFits(height: Number) -> Maker {
        return self
    }
}
