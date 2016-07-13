//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Ryan Cohen on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var price: Int = 0
        
        for item: Item in items {
            price += item.priceInCents
        }
        
        return price
    }
    
    func addItem(item: Item) {
        items.append(item)
    }
    
    func removeItem(item: Item) {
        if let index = items.indexOf(item) {
            items.removeAtIndex(index)
        }
    }
    
    func itemsWithName(name: String) -> [Item] {
        var matches: [Item] = []
        
        for item: Item in items {
            if (item.name == name) {
                matches.append(item)
            }
        }
        
        return matches
    }
    
    func itemsWithMinimumPriceInCents(price: Int) -> [Item] {
        var matches: [Item] = []
        
        for item: Item in items {
            if (item.priceInCents >= price) {
                matches.append(item)
            }
        }
        
        return matches
    }
    
    func itemsWithMaximumPriceInCents(price: Int) -> [Item] {
        var matches: [Item] = []
        
        for item: Item in items {
            if (item.priceInCents <= price) {
                matches.append(item)
            }
        }
        
        return matches
    }
}