//
//  WishModel.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/11.
//

import Foundation

struct WishModel{
    var title: String
    var text: String
    var eagerness: Float
    
    init(_title: String, _text: String, _eagerness: Float){
        title = _title
        text = _text
        eagerness = _eagerness
    }
    
    func printProperty(){
        print("title: \(title)\ntext: \(text)\neagerness: \(eagerness)")
    }

}
