//
//  ContentView.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/10.
//

import SwiftUI


struct Login_View: View {
    var body: some View {
        NavigationView{
            // Hstack begin
            HStack(){
                //Spacer()
                VStack(alignment: .center){
                    //Spacer().frame(height: 279)
                    Text("Hello,").font(.system(size: 40, weight: .heavy))
                    Spacer().frame(height: 48)
                    Text("The best way to achieve your goal.")
                    Text("Start accomplishingyour wishes")
                    Text("with KUKU. Let's get startd.")
                    Spacer().frame(height: 130)
                    Text("CONTINUE WITH : ")
                    Spacer().frame(height: 15)
                    
                    ZStack(){
                        
                        VStack(){
                            NavigationLink(destination: Wish_List_View()){
                                
                                Text("EMAIL")
                                    .foregroundColor(Color.black)
                                    .fontWeight(.bold)
                                    .frame(width: 327, height: 52)
                                    .background(Color.midgrey)
                                    .cornerRadius(60)
                                    .padding(5)
                            }
                            NavigationLink(destination: Wish_List_View()){
                                
                                Text("GOOGLE")
                                    .foregroundColor(Color.black)
                                    .fontWeight(.bold)
                                    .frame(width: 327, height: 52)
                                    .background(Color.midgrey)
                                    .cornerRadius(60)
                                    .padding(5)
                            }
                            
                            NavigationLink(destination:Wish_List_View()){
                                
                                Text("KAKAO")
                                    .foregroundColor(Color.black)
                                    .fontWeight(.bold)
                                    .frame(width: 327, height: 52)
                                    .background(Color.midgrey)
                                    .cornerRadius(60)
                                    .padding(5)
                            }
                        }
                    }
                }
            }
        }
    }
}



struct Login_View_Previews: PreviewProvider {
    static var previews: some View {
        Login_View()
    }
}
