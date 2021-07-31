//
//  SliderCustom.swift
//  ChangeColorSwiftUI
//
//  Created by Алексей on 30.07.2021.
//

import SwiftUI

struct SliderCustom: View {
    var sliderColor: Color = .red
    @Binding var sliderValue: Double
    @State private var showAlert = false
    
    var body: some View {
        let binding = Binding<String>(
            get: { String(Int(self.sliderValue)) },
            set: { textFieldValue in
                print(textFieldValue)
                if let number = Int(textFieldValue) {
                    if (0...255).contains(number) {
                        self.sliderValue = Double(number)
                    } else {
                        self.showAlert = true
                    }
                } else if textFieldValue == ""{
                   
                } else {
                    self.showAlert = true
                }
 
            }
        )
        
        HStack{
            HStack{
                Text("\(sliderColor.description.uppercased()):").frame(width: 60, alignment: .leading )
                Text("\(lround(sliderValue))")
            }
            Slider(value: $sliderValue,
                   in: 1...255,
                   step: 1
            )
                .accentColor(sliderColor)
            TextField("Double", text: binding)
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Ошибка"), message: Text("Допустимое значение от 1 до 255"), dismissButton: .cancel())
            })
            .keyboardType(.numberPad)
            .frame(width: 50)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
        }
        .padding()
        
    }
    

}
