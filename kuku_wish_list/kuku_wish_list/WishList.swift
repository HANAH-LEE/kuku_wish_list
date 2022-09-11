//
//  WishList.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/10.
//
//  developed by Nexlice

import Foundation
import SwiftUI

func addNewWish() -> String{
    let newText = "newnew"
    return newText
}

struct Wish_List_View: View {
    var body: some View {
        ZStack(){
            VStack(){
                ScrollView(){
                    VStack(){
                        Spacer().frame(height: 23)
                        
                        //Start of User name, search,and menu
                        HStack(){
                            
                            Spacer().frame(width:30)
                            
                            //TODO: 유저 이름 받아오기
                            Text("User"+"'s Wishlist")
                                .font(.system(size: 30, weight: .bold))
                            
                            Spacer()
                            
                            Image("icon_search")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                            //Spacer().frame(width:16)
                            
                            Image("icon_hamburger")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                            Spacer().frame(width:30)
                        }
                        //End of User name, search, and menu
                        
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
                            //TODO: 아무것도 없으면 아직 wish없다고 띄울 것.
                            //TODO: 정보 저장해서 Wish 불러올 것.
                            Wish_View()
                            Wish_View()
                            Wish_View()
                            Wish_View()
                            Wish_View()
                            
                            
                        }
                        //End of wishlists
                        
                        Spacer()
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
                            .font(.system(size: 18))
                        Spacer().frame(width: 30)
                        
                    }
                }
                //Spacer().frame(height: 21)
            }
        }
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
