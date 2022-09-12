//
//  HashModel.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/12.
//

import Foundation

struct HashModel{
    var hashStr: String
    var hashColor: String
    var isSelected: Bool
    
    init(_hashStr: String, _hashColor: String, _isSelected: Bool){
        hashStr = _hashStr
        hashColor = _hashColor
        isSelected = _isSelected
    }
    
    func printProperty(){
        print("hashStr: \(hashStr), hashColor: \(hashColor), isSelected: \(isSelected)")
    }
}
