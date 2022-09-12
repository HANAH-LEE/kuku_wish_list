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
        VStack(alignment: .leading){
            Spacer().frame(height: 100)
            ScrollView(){
                HStack(){
                    Spacer().frame(width:35)
                    VStack(alignment: .leading){
                        //TODO: 안에 있는 내용들 구조체로 저장할 것.
                        Spacer().frame(height: 35)
                        Text("Title")
                            .font(.custom("Montserrat-SemiBold", size: 22))
                        Text("Starts")
                            .font(.custom("Montserrat-Medium", size: 19))
                        Spacer().frame(height: 35)
                    }
                    Spacer()
                    Spacer().frame(width:35)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 100)
            //https://iamcho2.github.io/2020/11/19/swiftui-round-specific-coners
            .background(Color.lightpink)
            .cornerRadius(20, corners: .topLeft)
            .cornerRadius(20, corners: .topRight)
            
        }
        //https://stackoverflow.com/questions/57730074/transition-animation-not-working-in-swiftui
        //transition이 insertion만 안될 때 대처법
        //https://www.hackingwithswift.com/forums/swiftui/transition-insertion-not-working/8139
        //디바이스에서는 잘 된다는데 난 확률적으로 ㅋㅋㅋ 디바이스에서 잘 됨
        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
        //https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-asymmetric-transitions
        //zstack이 쌓여서 제대로 애니메이션이 안 보일 떄 대처법 (잘됨)
        .zIndex(2)
        .ignoresSafeArea()
    }
}
