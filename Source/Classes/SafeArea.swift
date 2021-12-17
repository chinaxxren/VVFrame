//
//  Copyright © 2019 Rosberry. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
public final class SafeAreaRelationCollection: EdgeRelationCollection {

    override init(element: ElementType) {
        super.init(element: element)
        
        top = .init(element: element, relation: .safeArea(.top))
        left = .init(element: element, relation: .safeArea(.left))
        right = .init(element: element, relation: .safeArea(.right))
        bottom = .init(element: element, relation: .safeArea(.bottom))
    }
}

public struct SafeArea {}
@available(*, deprecated, message: "Use `view.safeArea.<type>` instead")
public var nui_safeArea: SafeArea {
    return SafeArea()
}
