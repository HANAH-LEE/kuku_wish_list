//
//  AddNewWish.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/12.
//

import Foundation
import SwiftUI

struct AddNewWish_View: View {
    
    //https://www.createwithswift.com/tutorial-passing-data-between-views-in-swiftui-using-state-and-binding/
    @Binding var isAddNewWishTapped : Bool
    
    var body: some View {
        
        //https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-visual-effect-blurs
        //https://developer.apple.com/documentation/swiftui/view/blur(radius:opaque:)
        
        
        Text("")
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        //음.. opacity+blur와 background 단독 느낌이 다름.
            .background(.ultraThinMaterial)
        //            .opacity(0.5)
        //            .blur(radius: 1)
            .ignoresSafeArea()
            .onTapGesture {
                withAnimation(.spring().speed(1)){
                    isAddNewWishTapped.toggle()
                }
            }
        
        //Start of profile and settings
        
        VStack(){
            Spacer()
            //https://iamcho2.github.io/2020/11/19/swiftui-round-specific-coners
            Rectangle()
                .cornerRadius(14, corners: .topLeft)
                .cornerRadius(14, corners: .topRight)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 100)
                .foregroundColor(Color.white)
            
        }
        //https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-asymmetric-transitions
        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
        .ignoresSafeArea()
    }
}
