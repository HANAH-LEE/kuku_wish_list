//
//  WishList.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/10.
//
//  developed by Nexlice

import Foundation
import SwiftUI

//user's wish
var Wishes: [WishModel] = []


func addNewWish() -> String{
    let newText = "newnew"
    return newText
}

struct Wish_List_View: View {
    
    //hamberger icon
    @State private var isHamburgerTapped = false
    
    var body: some View {
        ZStack(){
            VStack(){
                Spacer().frame(height: 40)
                
                //Start of User name, search,and menu
                HStack(){
                    
                    Spacer().frame(width:30)
                    
                    //TODO: 유저 이름 받아오기
                    Text("User"+"'s Wishlist")
                        .font(.custom("Montserrat-Bold", size:25))
                    
                    Spacer()
                    
                    Image("icon_search")
                        .resizable()
                        .frame(width: 40, height: 40)
                        
                    
                    Spacer().frame(width:16)
                    
                    Image("icon_hamburger")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .onTapGesture {
                            isHamburgerTapped = true
                        }
                    
                    Spacer().frame(width:30)
                }
                //End of User name, search, and menu
                
                if Wishes.capacity == 0 {
                    
                    Spacer().frame(height:100)
                    
                    Image("icon_nowish")
                        .resizable()
                        .frame(width:556, height:400)
                    
                    Text("no items yet")
                        .foregroundColor(Color.black)
                        .font(.custom("Montserrat-Medium", size:27))
                    
                    Spacer().frame(height:21)
                    
                    Text("Get Started by clicking add new wish!")
                        .font(.custom("Montserrat-Medium", size:16))
                        
                    
                    Spacer()
                    
                }
                else{
                    
                    ScrollView(){
                        VStack(){
                            
                            //Start of hashtags
                            HStack(spacing: 8){
                                Spacer().frame(width: 21)
                                //TODO: 만약에 아무것도 없으면 아무것도 띄우지 않을 것.
                                //TODO: 정보 저장해서 Hashtag 불러올 것.
                                Hashtag_View()
                                Hashtag_View()
                                Hashtag_View()
                                Spacer()
                                
                            }
                            //End of hashtags
                            
                            Spacer().frame(height: 15)
                            
                            //Start of wishlists
                            VStack(alignment: .leading, spacing: 22){
                                //TODO: 정보 저장해서 Wish 불러올 것.
                                Wish_View()
                                Wish_View()
                                Wish_View()
                                Wish_View()
                                Wish_View()
                                
                                
                            }
                            //End of wishlists
                            
                            
                        }
                        
                    }
                }
                //Add new wish Button
                Button(action:{
                    
                }){
                    HStack(){
                        Spacer()
                        Image("icon_plus")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("Add new wish")
                            .foregroundColor(Color.black)
                            .font(.custom("Montserrat-Light", size:18))
                        Spacer().frame(width: 30)
                        
                    }
                }
                Spacer().frame(height: 21)
            }
            .frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            //버그인듯? 프레임 크기 정해줘야 바운더리를 안넘어감..
            .blur(radius: isHamburgerTapped ? 1.0 : 0)
            
            if isHamburgerTapped == true {
                //https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-visual-effect-blurs
                //https://developer.apple.com/documentation/swiftui/view/blur(radius:opaque:)
                withAnimation(.easeInOut(duration: 2)){
                    
                    RoundedRectangle(cornerRadius: 20)
                        .opacity(0.5)
                        .blur(radius: 1)
                        .ignoresSafeArea()
                        .onTapGesture {
                            isHamburgerTapped = false
                        }
                }
                
                    
            }
        }
        //.frame(width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Wish_List_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Wish_List_View()
        }
    }
}
