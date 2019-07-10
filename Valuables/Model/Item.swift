//
//  Item.swift
//  Valuables
//
//  Created by TJ on 6/28/19.
//  Copyright © 2019 TJ. All rights reserved.
//

import Foundation

class Item: NSObject {
    
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    var date: Date
    let itemKey: String
    
    init (name: String, dollarValue: Int, serialNumber: String?, itemKey: String) {
        self.name = name
        valueInDollars = dollarValue
        self.serialNumber = serialNumber
        date = Date()
        self.itemKey = UUID().uuidString
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adj = ["Old", "New", "Favorite"]
            let noun = ["Dresser", "Turntables", "Purse", "Watch", "Earrings", "Suit"]
            
            var idx = arc4random_uniform(UInt32(adj.count))
            let randomAdj = adj[Int(idx)]
            
            idx = arc4random_uniform(UInt32(noun.count))
            let randomNoun = noun[Int(idx)]
            
            
            let randomName = "\(randomAdj) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(1000))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, dollarValue: randomValue, serialNumber: randomSerialNumber, itemKey: UUID().uuidString)
        } else {
            self.init(name: "", dollarValue: -1, serialNumber: nil, itemKey: UUID().uuidString)
        }
    }
}
