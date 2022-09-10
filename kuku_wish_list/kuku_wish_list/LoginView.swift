//
//  ContentView.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/10.
//

import SwiftUI


struct LoginView: View {
    var body: some View {
        // Hstack begin
        HStack(){
            Spacer()
            VStack(alignment: .center){
                Spacer().frame(height: 279)
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
                        Text("EMAIL")
                            .fontWeight(.bold)
                            .frame(width: 327, height: 52)
                            .background(Color.mint)
                            .cornerRadius(60)
                            .padding(5)
                        
                        Text("GOOGLE")
                            .fontWeight(.bold)
                            .frame(width: 327, height: 52)
                            .background(Color.mint)
                            .cornerRadius(60)
                            .padding(5)
                        
                        Text("KAKAO")
                            .fontWeight(.bold)
                            .frame(width: 327, height: 52)
                            .background(Color.mint)
                            .cornerRadius(60)
                            .padding(5)
                        
                    }
                }


            }
            Spacer()
        }
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
