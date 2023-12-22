//
//  SecondTabView.swift
//  LifecycleDemo
//
//  Created by Jaeseong Jeong on 22/12/2023.
//

import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text, {
                print("onChange triggered")
            })
    }
}

#Preview {
    SecondTabView()
}
