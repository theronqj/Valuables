//
//  ItemStore.swift
//  Valuables
//
//  Created by TJ on 6/28/19.
//  Copyright © 2019 TJ. All rights reserved.
//

import Foundation

class ItemStore {
    
    init() {
        for _ in 0..<5 {
            createItems()
        }
    }
    
    var allItems = [Item]()
    
    @discardableResult func createItems() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
}


