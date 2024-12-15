//
//  Theme.swift
//  Scrumtracker
//
//  Created by Malavika Akhilesh on 13/12/24.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case navy
    case lavender
    case magenta
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .indigo, .magenta, .purple, .navy, .oxblood: return Color.white
        case .bubblegum, .buttercup, .periwinkle, .poppy, .sky, .tan, .lavender, .teal, .yellow, .orange, .seafoam: return Color.black
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
}
