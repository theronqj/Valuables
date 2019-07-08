//
//  ItemStore.swift
//  Valuables
//
//  Created by TJ on 6/28/19.
//  Copyright © 2019 TJ. All rights reserved.
//

import Foundation

class ItemStore {
    
    var allItems = [Item]()
    
    @discardableResult func createItems() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        allItems.insert(movedItem, at: toIndex)
    }
}


