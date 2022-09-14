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
    @State var selected = "Monday"
    var body: some View{
        ZStack{
            Color.lightgray.frame(width: UIScreen.main.bounds.width, height: 300)
            VStack(){
                HStack(){
                    Spacer().frame(width: 50)
                    Text("select a date")
                        .font(.custom("Montserrat-Medium", size: 25))
                    Spacer()
                    Text("save")
                        .font(.custom("Montserrat-Medium", size: 25))
                    Spacer().frame(width: 50)
                }
                CustomPicker(selected: $selected)
            }
        }
    }
}


struct CustomPicker: UIViewRepresentable{
    
    @Binding var selected : String
    
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
            return 3
        }
        
        //        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        //
        //            return data[row]
        //        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
            let view = UIView(frame: CGRect(x:0 , y:0 , width: UIScreen.main.bounds.width/4, height: 60))
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
            
            label.text = data[row]
            label.textColor = .white
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 25, weight: .bold)
            
            view.backgroundColor = .red
            
            view.clipsToBounds = true
            view.layer.cornerRadius = view.bounds.height/2
            
            view.addSubview(label)
            return view
        }
        
        func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat{
            return UIScreen.main.bounds.width/4
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 60
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            self.parent.selected = data[row]
        }
        
    }
}

var data = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

struct CustomPickerPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomPickerView()
        }
    }
}
