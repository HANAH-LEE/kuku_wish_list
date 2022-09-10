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
            Spacer().frame(width:30)
            HStack(){
                
                Spacer().frame(width:12)
                
                VStack(alignment: .leading){
                    
                    Spacer().frame(height:15)
                    
                    HStack(){
                        //Title
                        Text("Title: Get Promoted")
                            .font(.system(size: 18, weight: .bold))
                        Spacer()
                        Circle()
                            .fill(Color.lightpink)
                            .frame(width: 24, height: 24)
                    }
                    
                    Spacer().frame(height: 10)
                    
                    //Text
                    Text("Text: Get Promoted")
                        .font(.system(size: 16))
                    
                    Spacer().frame(height: 4)
                    
                    Image("icon_ganjeol")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                    Spacer().frame(height: 4)
                    
                    ZStack(alignment: .leading){
                        
                        Capsule()
                            .fill(Color.white)
                            .frame(width:350, height: 13)
                        
                        Capsule()
                            .fill(Color.gray)
                            .frame(width:200, height: 13)
                    }
                    
                    
                    
                    Spacer().frame(height:15)
                    }
                
                Spacer()
                
                Spacer().frame(width:4)
                    
            }
            .background(Color.lightgray)
            .cornerRadius(16)
            
            Spacer().frame(width:30)
        }
        
    }
}

struct Wish_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Wish_View()
        }
    }
}
