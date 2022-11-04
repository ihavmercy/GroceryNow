//
//  Cart.swift
//  Cartcheck (iOS)
//
//  Created by gokul on 03/11/22.
//

import SwiftUI

struct Cart: Identifiable {
    var id = UUID().uuidString
    var item: Item
    var quantity: Int
    }
