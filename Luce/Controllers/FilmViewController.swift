//
//  FilmViewController.swift
//  Luce
//
//  Created by Diego Bustamante on 3/10/20.
//  Copyright © 2020 TheModernProgrammer. All rights reserved.
//

import UIKit


class FilmViewController: UITableViewController {
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionViewProperties()
        setupUI()
    }
}

// MARK: UI/UX Functions
extension FilmViewController {
    fileprivate func setupCollectionViewProperties() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.backgroundColor = .backgroundColor()
        tableView.tableFooterView = UIView()
    }
    
    fileprivate func setupUI() {
        setupClearNavBar()
        navigationItem.title = "Film"
    }
}

// MARK: UICollectionView Functions
extension FilmViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let flowLayout = UICollectionViewFlowLayout()
        let shotView = ShotViewController(collectionViewLayout: flowLayout)
        navigationController?.pushViewController(shotView, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
