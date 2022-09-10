//
//  Hashtag.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/11.
//

import Foundation
import SwiftUI



struct Hashtag_View: View {
    var body: some View {
        
        // Start of hashtag
        ZStack(){
            Text("")
                .frame(width: 84, height: 36)
                .background(Color.gray)
                .cornerRadius(18)
//                .padding(5)
            
            // Start of color circle, text
            HStack(){
                Circle()
                    .frame(width: 24, height: 24)
                
                Text("work")

            }
            // End of color circle, text
        }
        // End of hashtag
    }
}

struct Hashtag_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Hashtag_View()
        }
    }
}
