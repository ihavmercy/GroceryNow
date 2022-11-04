//
//  CartViewModel.swift
//  Cartcheck (iOS)
//
//  Created by gokul on 03/11/22.
//

import SwiftUI

class CartViewModel: ObservableObject {
    
    @Published var items = [
        Item(item_name: "Apple", item_cost: 50, item_details: "Good apple", item_image: "apple", item_quantity: 1, isAdded: false),
        Item(item_name: "Chocolate", item_cost: 25, item_details: "Something", item_image: "choco", item_quantity: 1, isAdded: false),
        Item(item_name: "Milk", item_cost: 20, item_details: "Good apple", item_image: "milk", item_quantity: 1, isAdded: false),
        Item(item_name: "Dettol", item_cost: 75, item_details: "Good apple", item_image: "dettol", item_quantity: 1, isAdded: false)
    ]
    }

 /*firebase fetch data
 //func fetchData(){
 let db = Firestore.firestore()
 
 db.collection("Items").getDocuments { (snap, err) in
 
    guard let itemData = snap else{return}
 
    self.items = itemData.documents.compactMap({ (doc) -> Item? in
        let id = doc.documentID
        let name = doc.get("item_name") as! String
        let cost = doc.get("item_cost") as! NSNumber
        let image = doc.get("item_image") as! String
        
        return Item(id: id, item_name: name, item_cost: cost, item_image: image)
        
 }
 

    
    }
*/
