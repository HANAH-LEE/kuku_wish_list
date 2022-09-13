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
    func makeCoordinator() -> Coordinator {
        return CustomPicker.Coordinator(parent1: self )
    }
    
    func makeUIView(context: UIViewRepresentableContext<CustomPicker>) -> UIPickerView{
        let picker = UIPickerView()
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIView(_ uiView: UIPickerView, context: UIViewRepresentableContext<CustomPicker>) {
        
    }
    
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
