//
//  ContentView.swift
//  ChangeColorSwiftUI
//
//  Created by Алексей on 30.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = 15.0
    @State private var greenSlider = 45.0
    @State private var blueSlider = 95.0

    var body: some View {
        ZStack{
            VStack {
                ColorView(color: Color(red: redSlider / 255,
                                       green: greenSlider / 255,
                                       blue: blueSlider / 255,
                                       opacity: 1
                ))
                SliderCustom(sliderColor: Color.red, sliderValue: $redSlider)
                SliderCustom(sliderColor: Color.green, sliderValue: $greenSlider)
                SliderCustom(sliderColor: Color.blue, sliderValue: $blueSlider)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


