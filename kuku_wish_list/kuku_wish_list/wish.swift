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
            
            VStack(){
                
                Spacer().frame(height:15)
                
                Text("")
                
                Spacer().frame(height:15)
                }
            
            Spacer().frame(width:12)
                
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
