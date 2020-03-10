//
//  ViewController.swift
//  Luce
//
//  Created by Diego Bustamante on 3/10/20.
//  Copyright © 2020 TheModernProgrammer. All rights reserved.
//

import UIKit

class CameraViewController: UITableViewController {
    let cellId = "cellId"
    let headerId = "headerId"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableViewProperties()
        setupUI()
    }
}

// MARK: UI/UX Functions
extension CameraViewController {
    fileprivate func setupTableViewProperties() {
        tableView.backgroundColor = .backgroundColor()
        tableView.tableFooterView = UIView()
        tableView.register(CameraCell.self, forCellReuseIdentifier: cellId)
    }
    
    fileprivate func setupUI() {
        setupClearNavBar()
        navigationItem.title = "Cameras"
    }
}
// MARK: tableView Header functions
extension CameraViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = CameraHeaderCell()
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
}

// MARK: tableView Functions
extension CameraViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CameraCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let filmView = FilmViewController()
        navigationController?.pushViewController(filmView, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
