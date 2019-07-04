//
//  ItemsVC.swift
//  Valuables
//
//  Created by TJ on 6/28/19.
//  Copyright © 2019 TJ. All rights reserved.
//

import UIKit

class ItemsVC: UITableViewController {
    var itemStore: ItemStore!
    let reuseID: String = "UITableViewCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        return cell
    }
    
    
}

