//
//  UITableView+Utility.swift
//  AutoHeader
//
//  Created by Patrick Maltagliati on 2/4/18.
//  Copyright © 2018 Patrick Maltagliati. All rights reserved.
//

import UIKit

extension UITableView {
    func sizeTableHeaderView() {
        guard let tableHeader = tableHeaderView else {
            return
        }
        
        tableHeader.setNeedsLayout()
        tableHeader.layoutIfNeeded()
        
        let height = tableHeader.systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
        
        var frame = tableHeader.frame
        frame.size.height = height
        tableHeader.frame = frame
        
        tableHeaderView = tableHeader
    }
}
