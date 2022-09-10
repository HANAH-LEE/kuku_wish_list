//
//  ColorExtentsion.swift
//  kuku_wish_list
//
//  Created by 하현지 on 2022/09/11.
//

import Foundation

import SwiftUI

//원하는 컬러 생성
extension Color {
    
    static let lightpink = Color(hex: "F7D0CF")
    static let peach = Color(hex: "ff8882")
    static let ivory = Color(hex: "f8ede3")
    static let brown = Color(hex: "897853")  // #을 제거하고 사용해도 됩니다.
}

 
extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}
