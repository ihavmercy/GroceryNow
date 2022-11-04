//
//  ItemView.swift
//  Cartcheck (iOS)
//
//  Created by gokul on 03/11/22.
//

import SwiftUI

struct ItemView: View {
    //real time update of price
    @Binding var item: Item
    var body: some View {
        HStack(spacing: 15){
            Image(item.item_image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
                .cornerRadius(15)
                //.shadow(radius: 10)
            VStack(alignment: .leading, spacing: 10){
                Text(item.item_name)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                HStack(spacing: 15){
                    Text("$\(item.item_cost)")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Spacer(minLength: 0)
                    
                    //add and minus button
                    
                    Button(action: {
                        if item.item_quantity > 1{
                            item.item_quantity -= 1
                        }
                    }) {
                        Image(systemName: "minus")
                            .font(.system(size: 16,  weight: .heavy))
                            .foregroundColor(.black)
                    }
                    
                    Text("\(item.item_quantity)")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding(.vertical,5)
                        .padding(.horizontal, 10)
                        .background(Color.black.opacity(0.06))
                    
                    Button(action: {item.item_quantity += 1}) {
                        Image(systemName: "plus")
                            .font(.system(size: 16,  weight: .heavy))
                            .foregroundColor(.black)
                    }
                }
            }.padding()
        }
    }
}


