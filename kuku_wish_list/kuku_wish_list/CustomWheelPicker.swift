//
//  CustomWheelPicker.swift
//  kuku_wish_list
//
//  Created by Andrew Wonwhoo NAH on 2022/09/13.
//

import Foundation
import SwiftUI


//https://www.youtube.com/watch?v=uPFk2BuNT5M
//https://codewithchris.com/uipickerview-example/
//https://makeapppie.com/2016/12/12/data-entry-with-uipickerview/

struct CustomPickerView: View{
    
    @State var selected = "Monday"
    
    var body: some View{
        ZStack{
            Color.lightgray.frame(width: UIScreen.main.bounds.width, height: 300)
            VStack(){
                HStack(){
                    Spacer().frame(width: 30)
                    Text("select a date")
                        .foregroundColor(Color.black)
                        .font(.custom("Montserrat-Medium", size: 20))
                    Spacer()
                    Text("save")
                        .foregroundColor(Color.black)
                        .font(.custom("Montserrat-Medium", size: 20))
                    Spacer().frame(width: 30)
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
        
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 3
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return pickerData[component].count
        }
        //        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        //
        //            return data[row]
        //        }
        
        //루프로 만들
        //https://stackoverflow.com/questions/26063039/uipickerview-loop-the-data
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return pickerData[component][row % pickerData[component].count]
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
            let view = UIView(frame: CGRect(x:0 , y:0 , width: UIScreen.main.bounds.width/4, height: 60))
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
            
            label.text = pickerData[component][row]
            label.textColor = .black
            label.textAlignment = .center
            //라벨이 ... 로 나오는 것 해제
            //https://stackoverflow.com/questions/36176356/uilabel-subclass-text-cut-off-in-bottom-despite-label-being-correct-height
            label.lineBreakMode = .byCharWrapping
            //label.sizeToFit()
            
            //라벨 폰트를 자동으로 조정
            //https://stackoverflow.com/questions/3476646/uilabel-text-margin
            label.adjustsFontSizeToFitWidth = true
            
            label.font = UIFont(name: "Montserrat-Medium", size: 20)
            
            view.addSubview(label)
            
            //https://stackoverflow.com/questions/69227904/can-you-get-rid-of-opaque-rectangle-in-a-uipickerview
            pickerView.subviews[1].alpha = 1
            //pickerView.subviews[1].clipsToBounds = true
            //pickerView.subviews[0].subviews.first?.subviews.last?.clipsToBounds = false
            
            //뒷 배경 투명하게 바꾸기
            //https://developer.apple.com/forums/thread/659184
            let transparent = UIColor(red: 255.0 , green: 255.0, blue: 255.0, alpha: 0.0)
            pickerView.subviews[1].backgroundColor = transparent
            
            //가운데 줄 색깔 바꾸기
            //https://developer.apple.com/forums/thread/659184
            pickerView.subviews[0].subviews[0].subviews[2].layer.cornerRadius = view.bounds.height/2
            pickerView.subviews[0].subviews[0].subviews[2].backgroundColor = pickerView.tintColor;
            
            //틴트컬러 색 바꾸기
            //https://stackoverflow.com/questions/48451642/how-to-change-the-uipickerview-text-color
            pickerView.setValue(UIColor.white, forKeyPath: "tintColor")
            //pickerView.subviews[1].backgroundColor = .white
            //pickerView.subviews.first?.subviews.last?.backgroundColor = UIColor.red
            
            return view
        }
        
        func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat{
            //column마다 다르게 width 정하기
            //https://stackoverflow.com/questions/4338164/how-can-i-change-the-width-of-each-component-in-a-uipickerview
            //            let w = pickerView.frame.size.width
            //            return component == 0 ? (2 / 3.0) * w : (1 / 3.0) * w
            switch (component){
            case 0:
                return pickerView.frame.size.width / 3;
            case 1:
                return pickerView.frame.size.width / 4;
            case 2:
                return pickerView.frame.size.width / 4;
                
            default:
                return 100;
            }
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 60
        }
        
        //        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //            self.parent.selected = day[row]
        //        }
        
    }
}

var month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var day = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
var year = ["2021", "2022", "2023", "2024", "2025", "2026", "2027","2028", "2029", "2030"]
var pickerData = [month, day, year]

struct CustomPickerPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomPickerView()
        }
    }
}

