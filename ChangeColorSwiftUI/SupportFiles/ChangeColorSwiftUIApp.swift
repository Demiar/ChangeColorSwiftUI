//
//  ChangeColorSwiftUIApp.swift
//  ChangeColorSwiftUI
//
//  Created by Алексей on 30.07.2021.
//

import SwiftUI

@main
struct ChangeColorSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
        }
    }
}
