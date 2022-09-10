//
//  Wish.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/11.
//
//  Developed by Nexlice

import Foundation
import SwiftUI

struct Wish_View: View {
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

struct Wish_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Wish_List_View()
        }
    }
}
