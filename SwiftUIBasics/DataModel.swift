//
//  DataModel.swift
//  SwiftUIBasics
//
//  Created by user239477 on 5/1/23.
//

import Foundation

struct TableData: Hashable {
    var id: Int
    var title: String
    var detail: String
    var popoverText: String
}

class DataModel: NSObject {
    static let data = [
        TableData(id: 1, title: "Option 1", detail: "Detail 1", popoverText: "Papover 1"),
        TableData(id: 1, title: "Option 2", detail: "Detail 2", popoverText: "Papover 2"),
        TableData(id: 1, title: "Option 3", detail: "Detail 3", popoverText: "Papover 3")
    ]
}




