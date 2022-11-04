//
//  Item.swift
//  Cartcheck (iOS)
//
//  Created by gokul on 03/11/22.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var item_name: String
    var item_cost: NSNumber
    var item_details: String
    var item_image: String
    var item_quantity: Int
    
    // to identify if the item is added
    var isAdded: Bool = false
    }

