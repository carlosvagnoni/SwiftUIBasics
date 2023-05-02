//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by user239477 on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var red = 0.0
    @State var green = 0.0
    @State var blue = 0.0
    
    var body: some View {
        
        
        
        VStack {
            NavigationView {
                List(DataModel.data, id: \.self) { object in
                    NavigationLink(object.title, destination: DetailView(data: object))
                }
                .navigationTitle("Options")
            }
            .frame(maxHeight: UIScreen.main.bounds.height * 0.5)
            
            Text("Color Picker")
                .padding()
                .font(.largeTitle)
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
                .font(.largeTitle)
            ColorSliderView(colorValue: $red, colorDot: .red)
            ColorSliderView(colorValue: $green, colorDot: .green)
            ColorSliderView(colorValue: $blue, colorDot: .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
