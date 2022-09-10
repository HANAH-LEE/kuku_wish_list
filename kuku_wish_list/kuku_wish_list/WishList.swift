//
//  WishList.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/10.
//
//  developed by Nexlice

import Foundation
import SwiftUI

func addNewWish() -> String{
    let newText = "newnew"
    return newText
}

struct Wish_List_View: View {
    var body: some View {
        ZStack(){
            VStack(){
                
                //Start of hashtags
                HStack(){
                }
                //Start of wishlists
                VStack(){
                    
                }
                
                //Add new wish Button
                Button(action:{
                    
                }){
                    
                    Text("Add new wish")
                }
            }
        }
    }
}

struct Wish_List_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Wish_List_View()
        }
    }
}
