//
//  ColorView.swift
//  ChangeColorSwiftUI
//
//  Created by Алексей on 30.07.2021.
//

import SwiftUI

struct ColorView: View {
    var color: Color = Color(red: 155 / 255,
                             green: 15 / 255,
                             blue: 15 / 255,
                             opacity: 1
    )
    
    var body: some View {
        color
            .frame(height: 200)
            .cornerRadius(10)
            .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
