//
//  ViewController.swift
//  AutoHeader
//
//  Created by Patrick Maltagliati on 2/4/18.
//  Copyright © 2018 Patrick Maltagliati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let _view = View()
    
    override func loadView() {
        view = _view
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        _view.didLayoutSubviews()
    }
}
