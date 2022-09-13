//
//  CustomWheelPicker.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/13.
//

import Foundation
import SwiftUI

//https://www.youtube.com/watch?v=uPFk2BuNT5M

struct CustomPickerView: View{
    var body: some View{
        CustomPicker()
    }
}


struct CustomPicker: UIViewRepresentable{
    
    func makeUIView(context: UIViewRepresentableContext<CustomPicker>) -> UIPickerView{
        let picker = UIPickerView()
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIView(_ uiView: UIPickerView, context: UIViewRepresentableContext<CustomPicker>) {
        
    }
    
    
    //coordinator의 의미
    //https://ally10.tistory.com/44
    //coordinatorsms UIKit -> SwiftUI로의 데이터 전달이다
    //coordinator의 구현 방법
    //https://sweetdev.tistory.com/447
    
    func makeCoordinator() -> Coordinator {
        return CustomPicker.Coordinator(parent1: self )
    }
    
    //각 struct 객체마다 coordinator가 필요한 경우가 있으므로
    //struct안에 class를 정하는게 좋다.
    //class name은 꼭 Coordinator가 아니어도 된다.
    //makeCoordinator를 이용할 것이기 때문.
    class Coordinator : NSObject, UIPickerViewDelegate, UIPickerViewDataSource{
        var parent : CustomPicker
        init(parent1 : CustomPicker){
            parent = parent1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return data.count
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
            
            return data[row]
        }
        
    }
}

var data = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

struct CustomPickerPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomPickerView()
        }
    }
}
