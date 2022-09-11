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
    var hashStr: String
    var hashColor: String
    
    init(_title: String, _text: String, _eagerness: Float, _hashStr: String, _hashColor: String){
        title = _title
        text = _text
        eagerness = _eagerness
        hashStr = _hashStr
        hashColor = _hashColor
    }
    
    func printProperty(){
        print("title: \(title)\ntext: \(text)\neagerness: \(eagerness)\nhashStr: \(hashStr)\nhashColor: \(hashColor))")
    }

}
