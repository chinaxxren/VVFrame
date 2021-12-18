//
//  Copyright © 2021 chinaxxren. All rights reserved.
//

import Foundation
import struct CoreGraphics.CGFloat

public protocol Number {
    var value: CGFloat { get }
}

extension CGFloat: Number {
    public var value: CGFloat {
        return self
    }
}

extension Double: Number {
    public var value: CGFloat {
        return CGFloat(self)
    }
}

extension Int: Number {
    public var value: CGFloat {
        return CGFloat(self)
    }
}
