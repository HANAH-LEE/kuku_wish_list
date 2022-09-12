//
//  Hashtag.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/11.
//

import Foundation
import SwiftUI



struct Hashtag_View: View {
    
    @State var HashModelVar: HashModel
    
    var body: some View {

            // Start of color circle, text
            HStack(){
                Spacer().frame(width: 10)
                Circle()
                    .foregroundColor(Color(hex: HashModelVar.hashColor))
                    .frame(width: 24, height: 24)
                Spacer().frame(width: 5)
                Text(HashModelVar.hashStr)
                    .font(.custom("Montserrat-Light", size: 16))
                Spacer().frame(width: 10)

            }
            .frame(height: 36)
            .background(HashModelVar.isSelected ? Color.lightgray : Color.clear)
            .cornerRadius(18)
            .onTapGesture {
                HashModelVar.isSelected.toggle()
            }
            // End of hashtag
    }
}

struct Hashtag_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Hashtag_View(HashModelVar: HashModel(_hashStr: "kuku", _hashColor: "CECECE", _isSelected: false))
        }
    }
}
