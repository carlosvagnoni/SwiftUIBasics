//
//  DetailView.swift
//  SwiftUIBasics
//
//  Created by user239477 on 5/1/23.
//

import SwiftUI

struct DetailView: View {
    @State var popoverIsShowing = false
    var data: TableData
    var body: some View {
        VStack {
            Text(data.detail)
            Button("Show Popover") {
                popoverIsShowing = true
            }
            .padding()
            .sheet(isPresented: $popoverIsShowing, content: {
                Text(data.popoverText)
            })
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
