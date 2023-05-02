//
//  ColorSliderView.swift
//  SwiftUIBasics
//
//  Created by user239477 on 5/1/23.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var colorValue: Double
    var colorDot: Color
    var body: some View {
        Slider(value: $colorValue, in: 0...1, step: 0.01)
            .padding()
            .colorMultiply(colorDot)
    }
}
