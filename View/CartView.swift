//
//  CartView.swift
//  Cartcheck (iOS)
//
//  Created by gokul on 03/11/22.
//

import SwiftUI

struct CartView: View {
    @StateObject var cartData = CartViewModel()
    //@ObservedObject var homeData: HomeViewModel
    var body: some View {
        VStack{
            
            HStack{
                
                //Button(action: {}){
                    
                   // Image(systemName: "chevron.left")
                    //    .font(.system(size:26, weight: .heavy))
                   //     .foregroundColor(.black)
                //}
                Text("Basket")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                Spacer()
                    
            }.padding()
            
            ScrollView(.vertical, showsIndicators: false){
                
                LazyVStack(spacing: 0){
                    
                    ForEach(cartData.items){item in
                        
                        //itemview
                        ItemView(item: $cartData.items[getIndex(item: item)])
                        
                    }
                }
            }
            VStack{
                
                HStack{
                    Text("Total")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    Spacer()
                    
                    //calculate total =
                    Text(calculateTotalPrice())
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                }.padding([.top,.horizontal])
                
                Button(action:{}){
                    Text("Check Out")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(Color.green)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
                
            }.background(Color.white)
        }
        .background(Color("gray").ignoresSafeArea())
        
    }
    func getIndex(item: Item)->Int{
        
        return cartData.items.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
        
    
        
    }
    func getPrice(value: Float)->String{
        
        let format = NumberFormatter()
        format.numberStyle = .currency
        
        return format.string(from: NSNumber(value: value)) ?? ""
    }
    func calculateTotalPrice()->String{
        
        var price : Float = 0
        cartData.items.forEach { (item) in
            price += Float(item.item_quantity) * Float(truncating: item.item_cost)
        }
        return getPrice(value: price)
    }
    
}
