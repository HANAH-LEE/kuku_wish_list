//
//  HamburgerView.swift
//  kuku_wish_list
//
//  Created by 하현지 on 2022/09/12.
//

import Foundation
import SwiftUI

struct HamburgerView: View {
    
    @Binding var isHamburgerTapped : Bool
    
    var body: some View {
        
        Text("")
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        //음.. opacity+blur와 background 단독 느낌이 다름.
            .background(.thinMaterial)
        //            .opacity(0.5)
        //            .blur(radius: 1)
            .ignoresSafeArea()
//            .onTapGesture {
//                withAnimation(.spring().speed(1)){
//                    isHamburgerTapped.toggle()
//                }
//            }
        HStack(){
            ZStack(){
                Image("icon_hamBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill) 
                    .frame(width: 350)

                
                Image("icon_hamFront")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
            }
            Spacer()
            
        }
        
        

        
    }
}

//struct HamburgerView_Previews: PreviewProvider {
//    static var previews: some View {
//        HamburgerView()
//    }
//}
