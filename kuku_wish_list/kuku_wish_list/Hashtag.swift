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

            // Start of color circle, text
            HStack(){
                Spacer().frame(width: 10)
                Circle()
                    .foregroundColor(Color.lightpink)
                    .frame(width: 24, height: 24)
                Spacer().frame(width: 5)
                Text("work")
                    .fontWeight(.thin)
                Spacer().frame(width: 10)

            }.frame(height: 36)
                .background(Color.lightgray)
                .cornerRadius(18)
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
