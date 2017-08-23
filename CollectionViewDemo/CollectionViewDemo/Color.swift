//
//  Color.swift
//  CollectionViewDemo
//
//  Created by Taylor Mott on 23-Aug-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

struct Color {
    
    var uiColor: UIColor
    var name: String
    var hasWhiteText: Bool = false
    
}

extension Color {
    
    static var all: [Color] {
        let red = Color(uiColor: UIColor.red, name: "Red", hasWhiteText: true)
        let orange = Color(uiColor: UIColor.orange, name: "Orange", hasWhiteText: true)
        let yellow = Color(uiColor: UIColor.yellow, name: "Yellow", hasWhiteText: false)
        let green = Color(uiColor: UIColor.green, name: "Green", hasWhiteText: true)
        let blue = Color(uiColor: UIColor.blue, name: "Blue", hasWhiteText: true)
        let purple = Color(uiColor: UIColor.purple, name: "Purple", hasWhiteText: true)
        
        return [red, orange, yellow, green, blue, purple]
    }
    
    static var multiples: [[Color]] {
        let red = Color(uiColor: UIColor.red, name: "Red", hasWhiteText: true)
        let orange = Color(uiColor: UIColor.orange, name: "Orange", hasWhiteText: true)
        let yellow = Color(uiColor: UIColor.yellow, name: "Yellow", hasWhiteText: false)
        let green = Color(uiColor: UIColor.green, name: "Green", hasWhiteText: true)
        let blue = Color(uiColor: UIColor.blue, name: "Blue", hasWhiteText: true)
        let purple = Color(uiColor: UIColor.purple, name: "Purple", hasWhiteText: true)
        
        return [[red, orange, yellow, green, blue, purple],
                [red, orange, yellow, green, blue, purple],
                [red, orange, yellow, green, blue, purple],
                [red, orange, yellow, green, blue, purple],
                [red, orange, yellow, green, blue, purple],
                [red, orange, yellow, green, blue, purple]]
    }
}
