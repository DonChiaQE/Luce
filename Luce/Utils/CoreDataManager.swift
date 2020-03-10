//
//  CoreDataManager.swift
//  Luce
//
//  Created by Diego Bustamante on 3/10/20.
//  Copyright © 2020 TheModernProgrammer. All rights reserved.
//

import CoreData

// MARK: Persistent Container
struct CoreDataManager {
    static let shared = CoreDataManager()
    let persistentContainer : NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Luce")
        container.loadPersistentStores { (storeDescription, err) in
            if let err = err {
               fatalError("Loading of store failed: \(err)")
            }
        }
        return container
    }()
}

// MARK: CoreData Functions
extension CoreDataManager {
    // Camera -> Film -> Shots
    // TODO:
    // CRUD Camera
    // CRUD Film
    // CRUD Shots
}
