//
//  NSLayoutConstraint+Utility.swift
//  AutoHeader
//
//  Created by Patrick Maltagliati on 2/4/18.
//  Copyright © 2018 Patrick Maltagliati. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    @discardableResult
    func setPriority(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
    
    @discardableResult
    func activate() -> NSLayoutConstraint {
        isActive = true
        return self
    }
}
