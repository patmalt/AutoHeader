//
//  View.swift
//  AutoHeader
//
//  Created by Patrick Maltagliati on 2/4/18.
//  Copyright © 2018 Patrick Maltagliati. All rights reserved.
//

import UIKit

class View: UIView {
    private let tableView = UITableView()
    private let cellIdentifier = "cellIdentifier"
    private let texts = ["Patriots", "Eagles", "Super Bowl", "Party"]
    private let tableHeader = TableHeaderView()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
        
        tableView.tableHeaderView = tableHeader
        
        addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didLayoutSubviews() {
        tableView.sizeTableHeaderView()
    }
}

extension View: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
        cell.textLabel?.text = texts[indexPath.row % texts.count]
        return cell
    }
}
