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
        
        HStack(){
            
            Spacer().frame(width:12)
            
            VStack(alignment: .leading){
                
                Spacer().frame(height:15)
                
                //Title
                Text("Title: Get Promoted")
                    .font(.system(size: 18, weight: .bold))
                
                Spacer().frame(height: 10)
                
                //Text
                Text("Text: Get Promoted")
                    .font(.system(size: 16))
                
                Spacer().frame(height: 4)
                
                Image("icon_ganjeol")
                    .resizable()
                    .frame(width: 10, height: 13)
                
                Spacer().frame(height: 4)
                
                ZStack(alignment: .leading){
                    Capsule()
                        .fill(Color.gray)
                        .frame(width:200, height: 13)
                }
                
                
                
                Spacer().frame(height:15)
                }
            
            //Spacer()
            
            Spacer().frame(width:12)
                
        }
        .background(Color.blue)
        .cornerRadius(16)
    }
}

struct Wish_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Wish_View()
        }
    }
}
