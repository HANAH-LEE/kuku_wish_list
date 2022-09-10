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
                    //TODO: 만약에 아무것도 없으면 아무것도 띄우지 않을 것.
                }
                
                //Start of wishlists
                VStack(){
                    //TODO: 아무것도 없으면 아직 wish없다고 띄울 것.
                    
                }
                
                //Add new wish Button
                Button(action:{
                    
                }){
                    HStack(){
                        Spacer()
                        Image("icon_plus")
                        
                        Text("Add new wish")
                            .foregroundColor(Color.black)
                        Spacer().frame(width: 30)
                        
                    }
                }
                
                Spacer().frame(height: 10)
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