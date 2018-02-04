//
//  UILayoutPriority+Utility.swift
//  AutoHeader
//
//  Created by Patrick Maltagliati on 2/4/18.
//  Copyright © 2018 Patrick Maltagliati. All rights reserved.
//

import UIKit

extension UILayoutPriority {
    static func +(lhs: UILayoutPriority, rhs: Float) -> UILayoutPriority {
        return UILayoutPriority(lhs.rawValue + rhs)
    }
    
    static func -(lhs: UILayoutPriority, rhs: Float) -> UILayoutPriority {
        return UILayoutPriority(lhs.rawValue - rhs)
    }
}
